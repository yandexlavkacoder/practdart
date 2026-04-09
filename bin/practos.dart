import 'dart:io';
import 'package:characters/characters.dart';

enum Mood {
  excited('😎', 'взволнованный', 9),
  happy('😊', 'счастливый', 8),
  sad('😢', 'грустный', 3),
  angry('😠', 'злой', 4),
  calm('😌', 'спокойный', 7),
  love('😍', 'влюбленный', 10);

  final String emoji;
  final String description;
  final int energy;

  const Mood(this.emoji, this.description, this.energy);
}

void main() {
  // Запрос имени пользователя
  stdout.write('Введите ваше имя: ');
  String name = stdin.readLineSync() ?? 'Гость';

  print('\nГенерируем случайное настроение...\n');

  // Генерация случайного настроения
  final randomMood = Mood.values[DateTime.now().millisecondsSinceEpoch % Mood.values.length];

  // Вывод сообщения с настроением
  print('Привет, $name! Твое настроение: ${randomMood.emoji} ${randomMood.description} (энергия: ${randomMood.energy}/10)');

  // Вывод юникода эмодзи
  print('Юникод вашего эмодзи: ${getUnicodeString(randomMood.emoji)}');

  // Запрос на анализ сложных эмодзи
  stdout.write('\nХотите просмотреть сложные эмодзи? (/нет): ');
  String answer = stdin.readLineSync()?.toLowerCase().trim() ?? '';

  // Проверка на положительный ответ
  if (answer == 'да' || answer == 'д' || answer == 'yes' || answer == 'y' || answer == '+') {
    stdout.write('\nВведите комбинацию эмодзи: ');
    String emojiString = stdin.readLineSync() ?? '';

    if (emojiString.isNotEmpty) {
      analyzeComplexEmoji(emojiString);
    } else {
      print('Вы не ввели эмодзи.');
    }
  } else {
    print('\nХорошо, пропускаем анализ сложных эмодзи.');
  }

  print('\nСпасибо, приходите снова!');
}

String getUnicodeString(String emoji) {
  final runes = emoji.runes.toList();
  if (runes.isEmpty) return 'U+0000';
  
  final hexValue = runes[0].toRadixString(16).toUpperCase();
  return 'U+${hexValue.padLeft(4, '0')}';
}

void analyzeComplexEmoji(String input) {
  print('\nАнализ строки "$input":');

  // 1. Количество 16-битных единиц (обычная длина строки в Dart)
  final utf16Length = input.length;
  print('- 16-битных единиц: $utf16Length');

  // 2. Количество кодовых точек (руны)
  final codePoints = input.runes.length;
  print('- Кодовых точек: $codePoints');

  // 3. Количество реальных символов (графемных кластеров)
  final realCharacters = input.characters.length;
  print('- Реальных символов: $realCharacters');

  // Демонстрация разницы
  print('\nДемонстрация разницы:');
  print('Обычная длина строки: $utf16Length');
  print('Длина через руны: $codePoints');
  print('Реальных символов (characters.length): $realCharacters');

  // Подробный вывод юникода для каждого символа
  print('\nПодробный вывод юникода:');
  
  int charIndex = 1;
  for (final character in input.characters) {
    print('\nСимвол $charIndex: $character');
    
    // Разбиваем графемный кластер на отдельные кодовые точки
    final runes = character.runes.toList();
    for (int i = 0; i < runes.length; i++) {
      final rune = runes[i];
      final hexValue = rune.toRadixString(16).toUpperCase().padLeft(4, '0');
      final symbol = String.fromCharCode(rune);
      
      // Определяем тип символа
      String type = '';
      if (rune == 0x200D) type = ' → Zero Width Joiner (ZWJ)';
      else if (rune >= 0x1F300 && rune <= 0x1F9FF) type = ' → Эмодзи';
      else if (rune == 0xFE0F) type = ' → Variation Selector';
      
      print('  Кодовая точка ${i + 1}: $symbol → U+$hexValue$type');
    }
    charIndex++;
  }
  
  // Дополнительное пояснение
  print('\n📚 Пояснение:');
  print('• Семья из 4 человек (👨‍👩‍👧‍👦) — это 1 реальный символ,');
  print('  но состоит из 7 кодовых точек (4 эмодзи + 3 соединителя ZWJ)');
  print('  и занимает 11 позиций в 16-битной строке.');
}