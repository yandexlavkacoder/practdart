import 'dart:math';

// 1. Кружка и Человек
class Mug {
  String drink;
  double volume;

  Mug(this.drink, this.volume);

  double drinkFrom(double amount) {
    double taken = amount > volume ? volume : amount;
    volume -= taken;
    return taken;
  }
}

class Person {
  String name;

  Person(this.name);

  void drink(Mug mug, double amount) {
    double taken = mug.drinkFrom(amount);
    print('$name выпил $taken мл напитка "${mug.drink}"');
  }
}

// 2. Шкаф и системы хранения
class StorageSystem {
  String name;
  List<String> items = [];

  StorageSystem(this.name);

  void addItem(String item) {
    items.add(item);
  }

  bool removeItem(String item) {
    return items.remove(item);
  }
}

class Wardrobe {
  List<StorageSystem> storages;

  Wardrobe(this.storages);

  void putItem(String storageName, String item) {
    var storage = storages.firstWhere((s) => s.name == storageName);
    storage.addItem(item);
  }

  void takeItem(String storageName, String item) {
    var storage = storages.firstWhere((s) => s.name == storageName);
    if (storage.removeItem(item)) {
      print('Вещь "$item" забрали из "$storageName"');
    } else {
      print('Вещь "$item" не найдена');
    }
  }
}

// 3. Гриф и Блин
class Plate {
  double weight;

  Plate(this.weight);
}

class Barbell {
  double maxWeight;
  List<Plate> left = [];
  List<Plate> right = [];

  Barbell(this.maxWeight);

  double get totalWeight {
    double sumLeft = left.fold(0, (sum, plate) => sum + plate.weight);
    double sumRight = right.fold(0, (sum, plate) => sum + plate.weight);
    return sumLeft + sumRight;
  }

  bool addLeft(Plate plate) {
    if (totalWeight + plate.weight <= maxWeight) {
      left.add(plate);
      return true;
    }
    return false;
  }

  bool addRight(Plate plate) {
    if (totalWeight + plate.weight <= maxWeight) {
      right.add(plate);
      return true;
    }
    return false;
  }
}

// 4. Конвертер валют
class CurrencyConverter {
  final Map<String, double> ratesToUsd;

  CurrencyConverter(this.ratesToUsd);

  double convert(double amount, String from, String to) {
    if (!ratesToUsd.containsKey(from) || !ratesToUsd.containsKey(to)) {
      throw Exception('Неизвестная валюта');
    }

    double amountInUsd = amount / ratesToUsd[from]!;
    return amountInUsd * ratesToUsd[to]!;
  }
}

// 5. Гараж через generics
class Garage<T> {
  List<T> objects = [];

  void add(T object) {
    objects.add(object);
  }

  T removeAt(int index) {
    return objects.removeAt(index);
  }

  void showAll() {
    for (var object in objects) {
      print(object);
    }
  }
}

// 6. Перегрузка арифметических операций
class NumberBox {
  int value;

  NumberBox(this.value);

  NumberBox operator +(NumberBox other) => NumberBox(value + other.value);
  NumberBox operator -(NumberBox other) => NumberBox(value - other.value);
  NumberBox operator *(NumberBox other) => NumberBox(value * other.value);
  NumberBox operator /(NumberBox other) => NumberBox(value ~/ other.value);
  NumberBox operator %(NumberBox other) => NumberBox(value % other.value);

  @override
  String toString() => value.toString();
}

// 7. Автомобиль и enum
enum CarState {
  stop,
  move,
  turnLeft,
  turnRight,
}

class Car {
  CarState state = CarState.stop;

  void stop() {
    state = CarState.stop;
    print('Автомобиль остановился');
  }

  void move() {
    state = CarState.move;
    print('Автомобиль едет');
  }

  void turnLeft() {
    state = CarState.turnLeft;
    print('Автомобиль повернул налево');
  }

  void turnRight() {
    state = CarState.turnRight;
    print('Автомобиль повернул направо');
  }
}

// 8. Геометрические фигуры
abstract class Shape {
  double area();
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() => width * height;
}

class Triangle extends Shape {
  double base;
  double height;

  Triangle(this.base, this.height);

  @override
  double area() => base * height / 2;
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() => pi * radius * radius;
}

// 9. Перевод систем счисления
class NumberSystemConverter {
  static String convert(String value, int fromBase, int toBase) {
    int decimal = int.parse(value, radix: fromBase);
    return decimal.toRadixString(toBase).toUpperCase();
  }
}

// 10. Список фигур и поиск максимальной площади
class ShapeCollection {
  List<Shape> shapes = [];

  void addShape(Shape shape) {
    shapes.add(shape);
  }

  Shape? maxAreaShape() {
    if (shapes.isEmpty) return null;

    Shape maxShape = shapes.first;

    for (var shape in shapes) {
      if (shape.area() > maxShape.area()) {
        maxShape = shape;
      }
    }

    return maxShape;
  }
}

// 11. Столовые приборы и стол
abstract class Cutlery {
  String name;

  Cutlery(this.name);

  @override
  String toString() => name;
}

class Spoon extends Cutlery {
  Spoon() : super('Ложка');
}

class Fork extends Cutlery {
  Fork() : super('Вилка');
}

class Knife extends Cutlery {
  Knife() : super('Нож');
}

class Table {
  List<Cutlery> items = [];

  void put(Cutlery item) {
    items.add(item);
    print('$item положен на стол');
  }

  void remove(Cutlery item) {
    if (items.remove(item)) {
      print('$item убран со стола');
    }
  }

  void showItems() {
    print('На столе: $items');
  }
}

void main() {
  // 1
  var mug = Mug('Чай', 300);
  var person = Person('Иван');
  person.drink(mug, 100);

  // 2
  var wardrobe = Wardrobe([
    StorageSystem('Полка'),
    StorageSystem('Ящик'),
  ]);
  wardrobe.putItem('Полка', 'Футболка');
  wardrobe.takeItem('Полка', 'Футболка');

  // 3
  var barbell = Barbell(100);
  print(barbell.addLeft(Plate(20)));
  print(barbell.addRight(Plate(20)));
  print('Вес на грифе: ${barbell.totalWeight} кг');

  // 4
  var converter = CurrencyConverter({
    'USD': 1,
    'EUR': 0.92,
    'RUB': 90,
  });
  print('100 USD = ${converter.convert(100, 'USD', 'EUR')} EUR');

  // 5
  var garage = Garage<Car>();
  garage.add(Car());
  garage.showAll();

  // 6
  var a = NumberBox(10);
  var b = NumberBox(3);
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);

  // 7
  var car = Car();
  car.move();
  car.turnLeft();
  car.stop();

  // 8 и 10
  var collection = ShapeCollection();
  collection.addShape(Rectangle(10, 5));
  collection.addShape(Triangle(10, 8));
  collection.addShape(Circle(4));

  var maxShape = collection.maxAreaShape();
  print('Максимальная площадь: ${maxShape?.area()}');

  // 9
  print(NumberSystemConverter.convert('255', 10, 16));
  print(NumberSystemConverter.convert('FF', 16, 10));
  print(NumberSystemConverter.convert('77', 8, 10));

  // 11
  var table = Table();
  var spoon = Spoon();
  var fork = Fork();

  table.put(spoon);
  table.put(fork);
  table.showItems();
  table.remove(spoon);
  table.showItems();
}