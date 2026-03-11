import 'dart:io';
import 'dart:math';

void main() {
  final journal = Journal(
    students: [
      Student('Иванов', 'Иван'),
      Student('Петров', 'Петр'),
      Student('Сидоров', 'Сидор'),
      Student('Смирнов', 'Алексей'),
      Student('Кузнецова', 'Анна'),
    ],
    subjects: [
      Subject('Математика'),
      Subject('Физика'),
      Subject('Информатика'),
      Subject('История'),
      Subject('Литература'),
    ],
  );

  // Заполнение случайными оценками для демонстрации
  journal.generateRandomGrades();

  while (true) {
    print('\n' + '=' * 60);
    print('            РАСШИРЕННЫЙ ОТЧЕТ ПО ГРУППЕ');
    print('=' * 60);
    print('1. Вывести сводную таблицу успеваемости');
    print('2. Поиск студента по фамилии/имени');
    print('3. Список уникальных оценок');
    print('4. Максимальные и минимальные оценки по предметам');
    print('5. Студенты с ровно одной двойкой');
    print('6. Предметы с баллом выше общего среднего');
    print('7. Количество студентов по категориям успеваемости');
    print('0. Выход');
    print('-' * 60);
    stdout.write('Выберите пункт меню: ');

    var choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        journal.printSummaryTable();
        break;
      case '2':
        journal.searchStudent();
        break;
      case '3':
        journal.printUniqueGrades();
        break;
      case '4':
        journal.printMinMaxGradesBySubject();
        break;
      case '5':
        journal.printStudentsWithExactlyOneF();
        break;
      case '6':
        journal.printSubjectsAboveOverallAverage();
        break;
      case '7':
        journal.printStudentCategories();
        break;
      case '0':
        print('Выход из программы.');
        return;
      default:
        print('Неверный выбор. Пожалуйста, выберите пункт от 0 до 7.');
    }
  }
}

class Student {
  final String lastName;
  final String firstName;

  Student(this.lastName, this.firstName);

  String get fullName => '$lastName $firstName';

  @override
  String toString() => fullName;
}

class Subject {
  final String name;

  Subject(this.name);

  @override
  String toString() => name;
}

class Grade {
  final Student student;
  final Subject subject;
  final int value;

  Grade(this.student, this.subject, this.value);

  @override
  String toString() => '$value';
}

class Journal {
  final List<Student> students;
  final List<Subject> subjects;
  final List<Grade> grades = [];

  Journal({required this.students, required this.subjects});

  void generateRandomGrades() {
    final random = Random();
    grades.clear();
    for (var student in students) {
      for (var subject in subjects) {
        // Генерируем оценки от 2 до 5 с вероятностью: 2 - 10%, 3 - 30%, 4 - 40%, 5 - 20%
        int r = random.nextInt(100);
        int grade;
        if (r < 10) {
          grade = 2;
        } else if (r < 40) {
          grade = 3;
        } else if (r < 80) {
          grade = 4;
        } else {
          grade = 5;
        }
        grades.add(Grade(student, subject, grade));
      }
    }
  }

  // Получить оценку студента по предмету
  int? getGrade(Student student, Subject subject) {
    try {
      return grades
          .firstWhere((g) => g.student == student && g.subject == subject)
          .value;
    } catch (e) {
      return null;
    }
  }

  // Получить все оценки студента
  List<Grade> getStudentGrades(Student student) {
    return grades.where((g) => g.student == student).toList();
  }

  // Получить средний балл студента
  double getStudentAverage(Student student) {
    var studentGrades = getStudentGrades(student);
    if (studentGrades.isEmpty) return 0;
    return studentGrades.map((g) => g.value).reduce((a, b) => a + b) /
        studentGrades.length;
  }

  // Получить средний балл по предмету
  double getSubjectAverage(Subject subject) {
    var subjectGrades = grades.where((g) => g.subject == subject);
    if (subjectGrades.isEmpty) return 0;
    return subjectGrades.map((g) => g.value).reduce((a, b) => a + b) /
        subjectGrades.length;
  }

  // Получить общий средний балл по группе
  double getOverallAverage() {
    if (grades.isEmpty) return 0;
    return grades.map((g) => g.value).reduce((a, b) => a + b) / grades.length;
  }

  // Определить категорию студента по успеваемости
  String getStudentCategory(Student student) {
    double avg = getStudentAverage(student);
    if (avg == 5.0) return 'Отличник';
    if (avg >= 4.0) return 'Хорошист';
    return 'Остальные';
  }

  // Пункт 1: Сводная таблица
  void printSummaryTable() {
    print('\n--- СВОДНАЯ ТАБЛИЦА УСПЕВАЕМОСТИ ---');
    
    // Заголовок с предметами
    stdout.write('Студент'.padRight(20));
    for (var subject in subjects) {
      stdout.write(subject.name.padLeft(10));
    }
    stdout.write('Ср.балл'.padLeft(10));
    print('');

    // Данные по студентам
    for (var student in students) {
      stdout.write(student.fullName.padRight(20));
      for (var subject in subjects) {
        int? grade = getGrade(student, subject);
        stdout.write((grade?.toString() ?? '-').padLeft(10));
      }
      double avg = getStudentAverage(student);
      stdout.write(avg.toStringAsFixed(2).padLeft(10));
      print('');
    }

    // Последняя строка со средними по предметам
    stdout.write('Ср.балл'.padRight(20));
    for (var subject in subjects) {
      double avg = getSubjectAverage(subject);
      stdout.write(avg.toStringAsFixed(2).padLeft(10));
    }
    print('');
  }

  // Пункт 2: Поиск по фамилии/имени
  void searchStudent() {
    print('\n--- ПОИСК СТУДЕНТА ---');
    stdout.write('Введите фамилию или имя студента: ');
    String query = stdin.readLineSync()?.toLowerCase() ?? '';

    var foundStudents = students.where((s) =>
        s.lastName.toLowerCase().contains(query) ||
        s.firstName.toLowerCase().contains(query)).toList();

    if (foundStudents.isEmpty) {
      print('Студенты не найдены.');
      return;
    }

    for (var student in foundStudents) {
      print('\n' + '-' * 40);
      print('Студент: ${student.fullName}');
      print('Оценки по предметам:');
      
      var studentGrades = getStudentGrades(student);
      for (var grade in studentGrades) {
        print('  ${grade.subject.name}: ${grade.value}');
      }
      
      double avg = getStudentAverage(student);
      print('Средний балл: ${avg.toStringAsFixed(2)}');
      print('Категория: ${getStudentCategory(student)}');
    }
  }

  // Пункт 3: Список уникальных оценок
  void printUniqueGrades() {
    print('\n--- УНИКАЛЬНЫЕ ОЦЕНКИ ---');
    var uniqueGrades = grades.map((g) => g.value).toSet().toList()..sort();
    print('Оценки, встречающиеся в журнале: ${uniqueGrades.join(', ')}');
  }

  // Пункт 4: Максимальные и минимальные оценки по предметам
  void printMinMaxGradesBySubject() {
    print('\n--- МАКСИМАЛЬНЫЕ И МИНИМАЛЬНЫЕ ОЦЕНКИ ПО ПРЕДМЕТАМ ---');
    
    for (var subject in subjects) {
      var subjectGrades = grades.where((g) => g.subject == subject);
      if (subjectGrades.isEmpty) continue;

      int minGrade = subjectGrades.map((g) => g.value).reduce(min);
      int maxGrade = subjectGrades.map((g) => g.value).reduce(max);

      var studentsWithMin = subjectGrades
          .where((g) => g.value == minGrade)
          .map((g) => g.student.fullName)
          .toList();

      var studentsWithMax = subjectGrades
          .where((g) => g.value == maxGrade)
          .map((g) => g.student.fullName)
          .toList();

      print('\n${subject.name}:');
      print('  Минимальная оценка $minGrade: ${studentsWithMin.join(', ')}');
      print('  Максимальная оценка $maxGrade: ${studentsWithMax.join(', ')}');
    }
  }

  // Пункт 5: Студенты с ровно одной двойкой
  void printStudentsWithExactlyOneF() {
    print('\n--- СТУДЕНТЫ С РОВНО ОДНОЙ ДВОЙКОЙ ---');
    
    bool found = false;
    for (var student in students) {
      var studentGrades = getStudentGrades(student);
      var fGrades = studentGrades.where((g) => g.value == 2).toList();
      
      if (fGrades.length == 1) {
        found = true;
        print('${student.fullName} - предмет: ${fGrades.first.subject.name}');
      }
    }
    
    if (!found) {
      print('Нет студентов с ровно одной двойкой.');
    }
  }

  // Пункт 6: Предметы с баллом выше общего среднего
  void printSubjectsAboveOverallAverage() {
    print('\n--- ПРЕДМЕТЫ С БАЛЛОМ ВЫШЕ ОБЩЕГО СРЕДНЕГО ---');
    
    double overallAvg = getOverallAverage();
    print('Общий средний балл по группе: ${overallAvg.toStringAsFixed(2)}');
    
    List<String> aboveAvgSubjects = [];
    for (var subject in subjects) {
      double subjectAvg = getSubjectAverage(subject);
      if (subjectAvg > overallAvg) {
        aboveAvgSubjects.add('${subject.name} (${subjectAvg.toStringAsFixed(2)})');
      }
    }
    
    if (aboveAvgSubjects.isEmpty) {
      print('Нет предметов со средним баллом выше общего.');
    } else {
      print('Предметы: ${aboveAvgSubjects.join(', ')}');
    }
  }

  // Пункт 7: Количество студентов по категориям
  void printStudentCategories() {
    print('\n--- КОЛИЧЕСТВО СТУДЕНТОВ ПО КАТЕГОРИЯМ ---');
    
    int excellent = 0;
    int good = 0;
    int other = 0;
    
    for (var student in students) {
      String category = getStudentCategory(student);
      switch (category) {
        case 'Отличник':
          excellent++;
          break;
        case 'Хорошист':
          good++;
          break;
        default:
          other++;
      }
    }
    
    print('Отличники (средний балл = 5): $excellent');
    print('Хорошисты (средний балл >= 4): $good');
    print('Остальные (средний балл < 4): $other');
  }
}