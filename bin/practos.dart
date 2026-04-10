import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:characters/characters.dart';



enum Mood {
  excited("\u{1F60E}", "взволнованный", 9),
  happy("\u{1F600}", "счастливый", 8),
  relaxed("\u{1F60A}", "расслабленный", 7),
  tired("\u{1F634}", "сонный", 3),
  angry("\u{1F621}", "злой", 2),
  sad("\u{1F622}", "грустный", 4),
  inLove("\u{1F970}", "влюбленный", 10),
  playful("\u{1F923}", "игривый", 8),
  scared("\u{1F628}", "испуганный", 2),
  proud("\u{1F60E}", "гордый", 9);



  final String emoji;
  final String description;
  final int energy;



  const Mood(this.emoji, this.description, this.energy);
}

void main() {
  print("Введите ваше имя: ");
  String? name = stdin.readLineSync(encoding: utf8);
  name = name?.trim() ?? "Гость";

  print("\nГенерируем случайное настроение...\n");

  final random = Random();
  final moods = Mood.values;
  final selectedMood = moods[random.nextInt(moods.length)];

  print("Привет, $name! Твое настроение: ${selectedMood.emoji} ${selectedMood.description} (энергия: ${selectedMood.energy}/10)");
  
  final unicodeValue = selectedMood.emoji.runes.first.toRadixString(16).toUpperCase();
  print("Юникод вашего эмодзи: U+$unicodeValue");

  print("\nХотите просмотреть сложные эмодзи?");
  print("0 - Да");
  print("1 - Нет");
  print("Ваш выбор: ");
  
  String? choice = stdin.readLineSync(encoding: utf8);
  
  if (choice == "0") {
    print("\nВведите комбинацию эмодзи: ");
    String? complexEmoji = stdin.readLineSync(encoding: utf8);
    
    if (complexEmoji != null && complexEmoji.isNotEmpty) {
      analyzeComplexEmoji(complexEmoji);
    }
  } else {
    print("\nХорошо, в следующий раз!");
  }
  
  print("\nСпасибо, приходите снова!");
}

void analyzeComplexEmoji(String emojiString) {
  print('\nАнализ строки "$emojiString":');
  print('- 16-битных единиц: ${emojiString.length}');
  print('- Кодовых точек: ${emojiString.runes.length}');
  print('- Реальных символов: ${emojiString.characters.length}');
  
  print("\nПодробный вывод юникода:");
  
  int symbolIndex = 1;
  for (var char in emojiString.characters) {
    String unicodePoints = "";
    int pointIndex = 0;
    for (var rune in char.runes) {
      if (pointIndex > 0) unicodePoints += " ";
      unicodePoints += "U+${rune.toRadixString(16).toUpperCase()}";
      pointIndex++;
    }
    print("Символ $symbolIndex: $char → $unicodePoints");
    symbolIndex++;
  }
}