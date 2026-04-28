//import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
import 'package:characters/characters.dart';
import 'dart:async';
import 'dart:io';

// void main(List<String> arguments) {
// //   print('Hello world: ${dart_application_1.calculate()}!');
// // var fgh=6.6;
// // fgh=7;

// // int f=100000000;
// // int g=50_000_000;

// // print(4.compareTo(5));
// // 
//print(5.compareTo(4));
// // print(4.compareTo(4));

// // print((-5).abs());
// // print(5.isOdd); //нечетное
// // print(6.isOdd); //четное
// // print((-5).isNegative);
// // print(15.toRadixString((2)));
// // print(15.toRadixString(16));
// // print(15.toRadixString(8));
// // print(5.bitLength);
// // print(30.gcd(12));

// // String name='sdfsdf';
// // print(name[0]);
// // //name[0]=l; ошибка
// // String nameghj="g"+name.substring(1);
// // print(nameghj);
// // print(nameghj.length);
// // // String name1="";
// // // String name2=""" """;

// // print(nameghj.toUpperCase());
// // print(nameghj.toLowerCase());

// // var s1="dfgsdfssdf", s2="tdgfgs";
// // print((s1).compareTo(s2));

// //1
// String n = 'программирование на dart';
// print(n.length);

// //2
// String word = "Dart";
// print(word[0]);
// print(word[3]);

// //3
// String www='Я изучаю Java';
// print(www.replaceAll("Java", "Dart"));

// //4
// String w = 'Быстрый коричневый лис';
// String ww = 'Коричневый';
// int pos = w.indexOf(ww);
// print(pos);

// //5

// String s="https://example.com";
// print(s.startsWith("https"));
// print(s.endsWith("com"));

// //6
// String z="Dart - современной язык программирования";
// print(z.substring(7, 18));

// //7 
// String q = '42';
// print(q.padLeft(5, "0"));

// //8
// print("="*10);

// //9
// String s15="Очень длинная ненужная строка";
// print(s15.replaceAll(" ненужная", ""));

// //10
// String a = 'кот и кот и еще один кот';
// print(a.indexOf('кот'));
// print(a.indexOf('кот', 6));
// print(a.lastIndexOf('кот'));

// //11
// String sub3 = 'hello';
// String  sub5 = 'world';
// print(sub3 + " " + sub5);

// //12
// String s7=" ";
// print(s7.isEmpty);

// String s8="Hello123World123";
// print(s8.replaceAll(RegExp('r\d'), ''));

// //13
// String s9="12345";
// print(s9 is int);

// //14
// String s10="apple";
// String s11="Apple".toLowerCase();

// print(s10.compareTo(s11));

// //15
// String s12="Dart - это круто";
// print(s12.split(" "));

// //16
// String s13="топот";
// print(s13.split("").reversed.join(""));

// //17
// String s14="@gmail.com";
// print(s14.contains("@"));

// print(s14.contains("."));

// //Условные конструкции
// //if(условие){
// //тело условия
// //}

// int v=5;
// int b=9;

// if (v>9){
//   print("v>b");
// }else if(v<b){
//   print("v<b");
// }
// else{
//   print("они равны");
// }

// switch(v){
//   case 1:
//   print("v равно 1 ");
//   break;
//   case 2:
//   print("v равно 2");
//   break;
//   case 3:
//   print("v равно 4");
//   break;
//   default:
//   print("ничего не найдно");
// }

// //тернарный оператор

// //первый операнд - условие ? второй операнд : третий операнд
// double k=6;
// double d=7;
// double c=k>d ? k+d : k-d;
// print(c);

// k>d ? print(k+d) : print(k-d);


  //13.02.2026
  //Безопасность
  // String? name="привет";
  // name=null;
  // print(name);

  // String? name1;
  // print(name1);
   //? обозначает что переменная будет хранить значение типа нулл
  //! емли переменная не будет содержать значение нулл

  // String? a = "точно не нулл";

  // String f = a!; //точно не нулл

  // String? nickname; 
  // print(nickname ?? "гость");

  // String? title;
  // print(title ?? "присвоенное значение"); //присвает единожды значение

  // String? text; 
  // int len?=text?.length';

  // String num = stdin.readLineSync()!;
  // int? number = int.tryParse(num);
  // if(number! % 2 ==0) {
  //   print("четное");
  // } 


  //динамическая типизация - позволяет использовать любой тип
//   dynamic s = "H";  
//   print(s.length);
//   s = 8;
//   s = 7.8;
//   s = true;

//   Object? obj; 
//   obj = " "; 
//  //print(obj.length); не сработает
//  obj as String; 
//  print(obj.length);
 
//   dynamic json = {"name" : "fdfsdf"};
//   print(json["name"]);

//18.02.2026 Списки - для упорядоченных элементов
// List<int> d = [1, 2, 3, 4, 5];
// List<String> d1 = ["d", "a"];
// List<dynamic> d3 = ["d", "a", 1, 10];

// //методы для работы со списками

// List<int?> g=List.filled(5, null); //сколько-то элементов конкретного значения
// print(g);

// List<int?> g1=List.generate(3,(int x) => x*x); //генерирует
// print(g1);

// List<int?> g2=[1,3,4];
// List <int> a=List.from(g2);
// print(a);

// const List<int> f=[1,34]; //неизменяемый
// final a1=[3,4];

// List<int?> s=[1,4,6];
// print(s[0]);
// print(s[2]);//индексация

// print(s.first);
// print(d.last);

// print(s.length);
// print(s.isEmpty);
// print(s.isNotEmpty);
// print(s.reversed);
// //print(s.single);

// s.add(4);
// s.addAll([5,7,1]);//добавляет в конец 
// print(s);

// print(s.remove(1));
// print(s);

// s.insert(0, 11); // первое число - индекс, полсе которого добавляется элемент
// print(s);

// s.insertAll(0, [1111, 1]);
// print(s);

// s.removeAt(1);
// print(s);

// s.removeLast();
// print(s);

// s.removeRange(1, 3);
// print(s);

// List<int> e=[1,4,6,8];
// e.removeWhere((item) => item % 2==0);
// print(e);

// e.clear();
// print(e);

// List<int> e1=[1,4,6,5,8];
// e1[3]=6;
// print(e1);

// e1.fillRange(1,3, 0);
// print(e1);

// e1.replaceRange(1,3, [5,7]);
// print(e1);

// List<int> e2=[1,4,6,5,8];
// print(e2.indexOf(4));
// print(e2.lastIndexOf(8));
// print(e2.indexOf(-1));

// print(e2.contains(-1));

// print(e2.any((x)=> x>=10));
// print(e2.every((x)=> x>=10)); //тру или фолс проверяет каждый 

// //print(e2.firstWhere((x)=> x>=10));
// //print(e2.lastWhere((x)=> x>=10));

// List<int> e4=[1,4,6,5,8];
// print(e4.sublist(1,4));

// print(e4.sublist(1)); //возвращается с этого индекса и до конца

// List<int> e3=[1,4,6,5,8];
// List<int> d5=[...e3,3,4,5]; //... сприт
// print(d5);

// e3.sort();
// print(e3);

// List<String> k=["длинное слово", "слово", "очень очень оченб длинное слово", "очень очень длинное слово"];
// k.sort((a,b) => a.length.compareTo(b.length));
// print(k);

// //преобразование каждого элемента в списке 
// List<int> r=[1,2,3,4,5];
// var q=r.map((x)=> x*2);
// print(q);

// var q1=r.where((x)=> x>4).toList();
// print(q1);

// var w2=r.skip(2);
// print(w2);

// var w23=r.take(2);
// print(w23);

// final number = <double>[10, 2, 5, 0.5];
// final result = number.reduce((value, element) => value + element);

// List <String> fruits=["яблоко", "банан", "киви", "апельсин", "мандарин"];
// print(fruits);
   
//20.02.2026 множества - неупорядочные уникальные элементы
//   Set set1={1, 2, 3, 4, 5, 'd'};
//   Set<int> d={1,2,3,4,5};

//   Set<int> f=Set.from([1]);
//   print(f);
//   Set<int> k={1,2,3};
//   print(k.length);
//   print(k.first);
//   print(k.last);
//   print(f.single);

//   k.add(5);
//   k.addAll({6,7,8});
//   print(k);

//   print(k.remove(5));
//   print(k);

//   k.removeAll({4,2});

//   k.removeWhere((x)=>x==1);
//   print(k); 

//   print(k.contains(3));
//   print(k.containsAll({6,0}));

//   Set<int> d1={1,2,3};
//   Set<int> d3={3,4,5};

//   print(d1.union(d3));
//   print(d1.intersection(d3));
//   print(d1.difference(d3));

// //симметрическая разность
//   print(d1.union(d3).difference(d1.intersection(d3)));

//   print(d1.every((x)=>d3.contains(x)));
//   Set<int> t={7,8,...d3,7,8,...d1};//сприт
//   print(t);

//   Set<int>? c;
//   c=null; //само множество может быть нулевое

//   Set<int?> c1={1,null}; //элемент может быть нулевой

//   Set <String> a={"фиолетовый", "зеленый", "розовый", "красный", "белый"};
//   print(a);


// Set<int> numbers={};
// numbers.addAll({1,2,3,4,5});
// print(numbers);
// print(numbers.length);

// Set<String> fr={'Яблоко', 'Банан', 'Апельсин'};
// print(fr.contains('Банан'));
// print(fr.contains('Виноград'));

//   Set<int> f1={1,2,3,4,5};
//   f1.remove(3);
//   print(f1);

//   List<int> l=[1,2,2,3,3,3,4,5];
//   Set<int> lr=Set.from(l);
//   print(lr);

//   Set<int> f4={1,2,3,4,5};
//   Set<int> f5={3,4,5,6,7};
//   print(f5.intersection(f4));

//   Set<int> f6={1,2,3};
//   Set<int> f7={3,4,5};
//   print(f6.union(f7));

//   print(f6.map((e)=> e*2));

//   Set<int> m={10,20,30,40,50};
//   print(m.where((x) => x> 30));

//   Set<int> p={1,2,3};
//   Set<int> p1={3,2,1};
//   // print(p.every((x) => p1.contains(x)));
//   print(p==p1);
// String o="привет мир привет dart";
// Set<String> d10=Set.from(o.split(" "));
// print(d10);

//   Set<int> a1={1,2,3,4,5,6,7,8,9,10};
//   print(a1.where((x) => x%2==0).toSet());
//   print(a1.where((x) => x%2!=0).toSet());
//   print(a1.toList());

//   String str="hello world";
//   Set<String> st1=Set.from(str.split(""));
//   print(st1);
  //27.02.2026
  //цикл - конструкция для повторения кода
  //for(иниуиализвация;условие;изменение){
  //тело
  //}
  // for(int i=1;i>=5;i++){
  //   print(i);
  // }
  // for(int i=5;i>=1;i--){
  //   print(i);
  // }
  // for(int i=2;i<=20;i+=2){
  //   print(i);
  // }
  // for(int i=1;i<=5;i++){
  //   for(int j=1;j<=5;j++){
  //     int a=i*j;
  //     print("$i * $j = $a");
  //   }
  // }
  // int sum=0;
  // for(int i=1;i<=5;sum+=i,i++);
  //    print(sum);
  //for(тип и переменная in коллекция){//тело цикла}
//   List<int> a=[1,2,3,4];
//  for(var i in a){
//   print(i);
//  }
//  for(int i=1;i<=a.length;i++){
//   print(i);
//  }
 
//   String dart="Dart";
//   for(var str in dart.split("")){
//     print(str);
//   }

//   for(var g in dart.runes){
//     print(String.fromCharCode(g));
//   }

//   List<String> str=["Яблоко","Ананас","Фрбез"];
//   for(var s in str.asMap().entries){ //entrice выводит данные в  форме ключ-значение
//     print("${s.key},${s.value}");
//   }
//   Set<String> set={"Яблоко","Ананас","Фрбез"};
//   Map<String,int> map={};
//   for(var a in set){
//     map[a]=a.length;
//   }
//   print(map);

//   //while(условие)

//   int i=1;
//   while(i<=5){
//     print(i);
//     break;
//   }

//   int f=1000;
//   while(f>0){
//     print(f);
//     f~/=2;
//   }

//   int o=1;
//   do{
//     print(o);
//     o++;
//   }while(o<=5);

//   List<int> list=[1,2,3];
//   list.forEach(print);

//   list.forEach((a){
//     print(a*2);
//   });

//   List<String> names=["Катя","Мирослава","Андрей"];
//   names.forEach((name)=>print("Привет $name !"));

//   // for(var l in list){
//   //   if(l==2){
//   //     break;
//   //   }
//   //   print(l);
//   // }
//   for(var l in list){
//     if(l==2){
//       continue;
//     }
//     print(l);
//   }


//   list.forEach((a){
//     if(a==2){
//       return;
//     }
//     print(a);
//   });

//   int sum1=0;
//   for(int i=1;i<=10;i++){
//     sum1+=i;
//   }
//   print(sum1);

//   String line= " ";
//   for(int i=1;i<=3;i++){
//     line+=i.toString();
//     print(line);
//   }

//   List<int> sp=[3,5,6,7,9];
//   int target=5;
//   for(var s in sp){
//     if(s==5){
//       print("Найдено");
//       break;
//     }else{
//       print("Не найдено");
//     }
//   }

//   int even=0;
//   int ood=0;
//   List<int> sp1=[3,5,6,7,9];
//   for(var a in sp1){
//     if(a%2==0){
//       even++;
//     }else{
//       ood++;
//     }
//   }
//   print(even);
//   print(ood);

//   int summa=0;
//   List<int> numbers = [5, 10, 3, -2, 7, 8];
//   for(var i in numbers){
//     if(i>0){
//       summa+=i;
//     }else{
//       break;
//     }
//   }
// print(summa);

// int summ=0;
// List<int> grades=[5, 4, 3, 5, 4];
// for(var grade in grades){
//   summ+=grade;
// }
// double cr=summ/grades.length;
// print(cr);

// List<int> temp=[15,18,20,22,19,17,16];
// List<int> temp1=[];
// for(var i in temp){
//   if(i>18){
//     temp1.add(i);
//   }
// }
// print(temp1);

// for(int i=2;i<=50; i++){
//   bool a=true;
//   for(int k=2;k<=i/2;k++){
//     if(i%k==0){
//       a=false;
//       break;
//     }
//     if(a){
//       print(i);
//     }
//   }
// }






//04.03.2026 словарь - коллекция пар ключ-значение, ключи уникальные, один ключ - 1 значение, значения не уникальны

//   Map<int,String> map1={1:"Анна", 2:"Петр"};
//   print(map1);

//   map1[3]="Даша";
//   print(map1);
 
//   map1.addAll({4:"fdgfsdf", 5:"erffdf"});
//   print(map1);

//   print(map1.remove(4));
//   print(map1);

//   map1.removeWhere((key,value)=>value.startsWith("A"));
//   print(map1);

//   map1.update(2, (value) => value.toLowerCase());
//   print(map1); 

//   map1.updateAll((key,value)=>value.toUpperCase());
//   print((map1));

//   Map<String, int> map={"dgf":1, "dfs":2};
//   Map<String, int> map6=Map.unmodifiable(map);
//   // map6["dfs"]=1;


//   map.putIfAbsent("l", ()=>100); //по умолчанию 100
//   print(map);

//   int? age=map["dfs"];
//   print(age);
//   int? map_name=map["dgf"];
//   print(map_name);

//   print(map.entries); // вовращает пары ключ значение

//   print(map.values);//значение

//   print(map.keys);//ключи

//   print(map.length);
//   print(map.isEmpty);

//   print(map.containsKey(1));
//   print(map.containsValue(1));





//   Map<int,String> map2=Map.from(map1);

//   Map<num,String> map3=Map.of(map1); //ключи могкт имень дабл


//   print(map.values.where((element)=> element ==100));


// print(map.values.map((element)=> element*2));

// print(map.entries.first);
// print(map.values.toList());

// List<Map<String,int>> mapList=[{}];

// for(var i in map.entries){
//   print(i.key);

// }

// for(var i in map.keys){
//   print(i);
  
// }

// map.forEach((key, value) => print("$key,$value"));


// List<String> names=["nddd", "lwww", "fddd"];

// Map<String,int> mapName={};

// Map<String,int> len=Map.fromIterable(names,
// key: (element) => element,
// value: (element)=> (element as String).length
// );
// print(len);

// String text="dart dart code flutter fl mob mob fl"; //считает повторчющиеся элементы
// var d=text.split(" ");
// Map<String,int> mapl={};
// for (var i in d){
//   mapl.update(i,
//    (a)=>a+1,
//    ifAbsent: () => 1
//    );
// }
// print(mapl);

// var d1=<String, int>{"hfh":1};

//   Map<int,List<dynamic>> mapList1={1:[]};
//6.03.2026 - кортеж. имеет фиксированное кол-во

  // var person=("Tanya", 18); //var автоматически определил тип данных
  // print(person);
  // print(person.$1); //аниноимный кортеж
  // print(person.$2);

  // var person1=(name:"Nomak",age:5);//именовоный кортеж
  // print(person1.name);
  // print(person1.age);

  // print(person1==person);

  // ({int age,String name}) person2=(name:"NAstya",age:5);
  // print(person2.name);
  // print(person2.age);

  // var person3=(name:"Tanya", age:18); 
  // print(person3.name); 
  // print(person3.age);

  // (int,String,int) person4=(4,"g",6);
  // print(person4.$1);
  // print(person4.$2);
  // print(person4.$3);

  // var p=(4,5);
  // var (x,y)=p;
  // print(x);
  // print(y);

  // var person7=f();
  // print(person7);

  // var person8=g();
  // print(person8);

  // a(("j",7));
  // imenov("jcdf",7);



  //строки ниже пистаь вне мэина
// (String,int) f(){
//   return ("y",6);
// }  
// ({int x,int y}) g(){
//   return (x: 3,y:4);
// }

// void a((String,int) v){
//   print(v.$1);
//   print(v.$2);
// }

// void imenov(({String name,int age}) v){
//   print(v.name);
//   print(v.age);
// }







//Коллекции, itterable - общий интерфей для все коллекций, которые можно перебирать по одному.
//Все это на выходе выжает итерейбл
//   List<int> a=[1,2,3,4,5];
//   print(a.where((element) => element<=2));
//   print(a.map((elem)=>elem*2));

//   const numbers=[1,2,3];
//   final a1=numbers.map((n)=>n*2);
//   print(a1);

//   print(a.reduce((a,b)=>a+b));

//   print(a1.fold(1,<double> (a,b)=>a*b)); 

//   print(a1.any((element)=> element==2));
//   print(a1.every((element)=> element==2));

//   print(a.skip(3));
//   print(a.take(3));

//   var d={1,2,3,4}
//     .take(2)
//     .skip(2)
//     .where((e)=>e<=2);

//   //вызов функций

//   print(iter(0,5));

// Iterable<int> it=[1,4,5,5];
// for(var i in it){
//   print(i);
// }








// }

// //создание собственных итерейбл с помощью функций 

// Iterable<int> iter(int start,int end) sync*{  
//   int a=start;
//   while(a<end){
//   yield a;
//   a++;
//   }
// }


//функции (20.03.2026)
//тип имя_функции(){
    //выполняемое выражение
//}


//20.03.2026
// int global=45;
// const global1="global"; //глобальные переменный доступны везде

// void main(){

//     String local_main="local main";

//     if(true){
//         int local_if=6;
//         print(global);
//         local_main="Gh";
//         print(local_main);
//         print(local_if);
//     }

//     print(local_main);
//     print(global);
//     //print(local_if); //не сработает, только внутри услдовной конструкции





//     helllo(); //вызов внутри мэин
//     hello();
//     //print(hello); не сработает

//     sum(4,5);
//     sum1(3,4);
//     // dif("3","5"); //тк не указан тип, не получится посчитать 
//     dif(3,5); 
//     div(5,6); //void
//     user("sdfsdd","srfrf","dg");
//     user1("rhrh","hfh");
//     user2("ggxdfg","dfgdx","17");
//     printText();
//     printText(text:"gf",header:"sdfs");
//     printTextt(text:"dfgzdsv");
//     h(4,5);
//     h(6,7);
//     print(div2(6,7));
//     print(div(6,7)); //динамический тип
//     print(div6(7,8)); 
//     var f=sumDif(4,5);
//     print(f); //получает кортеж из двух действий
//     userAge(6);
//     userAge(500);







//     Function func=helllo; 
//     func();

//     func=hello;
//     func();

    


// }




// void helllo(){
//     print("hello");
//     String hello="hell";
//     print(hello);
// }

// void hello()=>print("hello"); //стрелочная  функция

// void sum(int a,int b){
//     print(a+b);
// }

// void sum1(int a,int b){
//     int c=a+b;
//     print(c);
//     print(c*3);
// }

// void dif(a,b){ //не указан тип - будет dynamic
//     print(a-b);
// // }

// // div(a,b){
// //     print(a*b);
// // }

// // void user(String name, String surname, String lastName){
// //     print(name);
// //     print(surname);
// //     print(lastName);
// // }

// // void user1(String name, String surname, [String? lastName]){ //[] - необязателньый параметр
// //     if(lastName!=null){
// //         print("$name,$surname,$lastName");
// //     }else{
// //         print("$name,$surname");
// //     }
// // }

// // void user2(String name, String surname, [String? lastName,int? age]){ //[] - необязателньый параметр
// //     if(lastName!=null){
// //         print("$name,$surname,$lastName,$age");
// //     }else{
// //         print("$name,$surname");
        
// //     }
// // }

// // void printText({String? text="нет текста",String? header="нет заголовка"}){
// //     print(text);
// //     print(header);
// // }

// // void printTextt({ required String text,String? header="нет заголовка"}){ //обязателньый параметр
// //     print(text);
// //     print(header);
// // }

// // const a1=5;
// // void h(int a,int v){
// //     final a1=a; //конст во время компилции, файнал во время выполнения программы
// //     final v1=v;

// //     print(a1);
// //     print(v1);
// // } 

// // int div2(int a,int b){
// //     return a*b;
// // }

// // int div3(int a,int b){
// //     return a*b; 
// //     //int s=a/b; //не получится,тк ретурн завершает выполнение
// // }

// // div5(int a,int b){
// //     return a*b;
// // }

// // int div6(int a,int v)=> (a*v);



// // div7(int a,int b){
// //     print(a*b); //без воид и ретерн не содуержат ничего
// //     return null; 
// // }


// // (int, int) sumDif(int a, int b){
// //     int sum=a+b;
// //     int dif=a-b;
// //     return(sum,dif);
// // }

// // void userAge(int age){
// //     if(age<1 || age>100){
// //         print("error");
// //         return; //прерывает если неверно
// //     }
// //     print("возраст: $age");
// // }

// // //любая функция являетс я объектом функции function
// // //Задача - разработать функцию calculate, которая принимает два числа и строку с операцией ("+","-","*","/") и возвращает результат этой операции над цислами. При делении на ноль функция должна возвращать null
// // void main() {
// //   print(calculate(6, 3, "+"));
// //   print(calculate(6, 3, "-"));
// //   print(calculate(6, 3, "*"));
// //   print(calculate(6, 3, "/"));
// //   print(calculate(6, 0, "/"));
// // }

// // calculate(double a, double b, String operation) {
// //   switch (operation) {
// //     case "+":
// //       return a + b;
// //     case "-":
// //       return a - b;
// //     case "*":
// //       return a * b;
// //     case "/":
// //       if (b == 0) {
// //         return null;
// //       }
// //       return a / b;
// //   }
// // }






// //27.03.2026
// void main() {
//   int Function(int,int) func=sum; //хранит ссылку на вызов, когда не указывается явный тип, принимает динамический
//   print(func(4,5));
//   operation(5, 6, (x,y)=>x*y); //анонимная функция
//   operation(5, 6, (x,y)=>x+y);
//   operation(5, 6, (x,y)=>x-y);
//   operation(5, 6, sum); //вызывает функцию сум, не анонимная
//   div(5,6);

//   var counter=makeCounter(); //пока в мэине не будет создан параметр, функция не сработает. 
//   print(counter());
//   print(counter());
//   print(counter());

//   printRes(add,7,8);

//   var d=<void Function()>[]; //список из объектов функции
//   var mult=Mult(5);
//   print(mult(6));
//   func1(4,()=>print("Привет")); 
//   callback(()=>print("Колбек"));
//   var s=make(5);
//   print(s(7));
//   print(s(5));
//   var list=[1,2,3];
//   int s1=8;
//   print(list.map((e) => e*s1).toList()); 
//   print(rek(2,2));
//   print(str("fghfg"));




// }


// int sum(int a, int b)=> a+b; //стрелочная функция может выполнять только 1 выражение 

// void operation(int x,int y,Function(int,int) f){
//   int result=f(x,y);
//   print(result);
// }

// int div(x,y){
//   return x-y;

// }



// //возврат функции

// Function makeCounter(){
//   int count=0;
//   return(){
//     count++;
//     return count;
//   };
// //замыкание - функция помнит внешние переменные, или внутренние 
// } 

// typedef Op=int Function(int a, int b); //псевдоним, сигнатура 
// void printRes(Op oper,int x,int y){
//   print(oper(x,y));
// }
// int add(int a,int b)=>a+b; 

// class Mult{
//   final int g;

//   Mult(this.g);

//   int call(int value) => g*value;
// }
  
// void func1(int n, void Function() f){
//   for(int i=0; i<n; i++){
//     f();
//   }
// }


// void callback(void Function() j){
//   print("Начинается работа функции");
//   print("Работа функции завершена");
//   j();

// }

// int Function(int) make(int c){
//   return(int x){
//     return c*x;
//   };
// }


// int rek(int n, int m){
//   if(m==0){
//     return 1;
//   } 
//   return n* rek(n,m-1);
// }



// String str(String word){
//   if(word.isEmpty){
//     return "";
//   }
//   return str(word.substring(1))+word[0];
// }







//01.04.2026
//кол-во символов, если строка - lenght. в строке - кол-во клеточек для смайликов
//смайлик семья состоит из дочерних(сурогатных) смайликов
//runes - число, которое представляет кодовую точку под которой содержится в системе.
//кодовая точка - руна, с помощью которой узнается какой конкретный символ хранится в руне
//fromCharCode{число руны} - выводит руну
//codeUnits - список из всех кодовых точек
//runes.first.ToRadixString(16) - преобразование в 16-тиричный формат с целью узнать кодировку Unicode у смайлика
//строка - последовательность символов в Utf-16
//что такое Unicode? отличие строки от руны? что такое characters? что такое перечисление?

// enum Status{
//   processing,
//   ready;
// }

// enum Day{
//   mon,
//   tue,
//   wed,
//   t,
//   fri,
//   sat,
//   su;
// }
// void main(){
//   statusShow(1);
//   statusShow1(Status.processing);
//   Day today = Day.wed;


//   switch (today){
//     case Day.mon:
//     print("5пар");
//     case Day.tue:
//     print("5 пар");
//     case Day.wed:
//     print("3 пар");


//     default:
//     print("5 пар");
//   }


//   for(var i in Status.values){
//     print(i);
//     print(i.name);
//     print(i.index);
//   }


//   String s="ABC";
//   print(s);
//   print(s.runes);
//   print(s.runes.first.toRadixString(16));

//   print(String.fromCharCode(65));


//   String smile= "😅";
//   print(smile);
//   print(smile.length);

//   String family="";
//   print(family);
//   print(family.length);
//   print(family.runes.last.toRadixString(16));
//   String f="\u{1f469}";
//   String f1="\u{1f467}";
//   print(f1);
// }

// enum Role{
//   admin("admin", 1),
//   user("user", 3 ),
//   owner("product",2);

//   final String login;
//   final int preiorety;

//   const Role(this.login,this.preiorety);
// }

//   enum Trass{
//     red,
//     yellow,
//     green;
//     bool get canGo=>this==Trass.green;
//   }

// void statusShow(int status){
//   if(status == 1){
//     print("обработка заказа");
//       }else if(status ==2){
//         print("выдача");
//       }

// }
// void statusShow1(status){
//   if(status == Status.processing){
//     print("обработка заказа");
//       }else if(status == Status.ready){
//         print("выдача");
//       }

// }
//руна - целое число, которое представляет кодовую точку
// кодовая точка - это число или набор чисел для определния их стандарта юникода 
//юникод - стандарт оперделния кодовой точки 






//13.04.2026
// парадигма процеурная - повторяющиеся шаги, которые выносятся в функцию
// последовательная парадигма

// class Person{//camelCase - верблюжий регистр (большой) 
//   //поля - свойства у каждого объекта есть много атрибутов(полей) или один
//   //за свойства отвечает объект
//   String? name; //инициализация полей
//   int? age;
//   // Person(this.name,this.age); // инициализация и создание объектов класса в конструкторе. если они не определены, то конструктор без параметров
//   // задача конструктора - задать значение полей и подготовить объект для дальнейшей работы
//   void printInfo(){
//     print("$name,$age");
//   }
//   Person(String name, int age): this.name=name, this.age=age; // инициализация полей может задавать динамическую логику
// } // сам класс - описание у которого бможет быть несколько объектов(экземпляров классов). класс и объект не одно и тоже

// class Point{ // создание именованного конструктора с координатой
//   int x=0;
//   int y=0;
//   // Point(this.x,this.y);
//   // Point.p():
//   // x=0,
//   // y=0;

//   // Point.copy(Point other):
//   // x=other.x,
//   // y-other.y;

//   // Point(int pX, int pY){
//   //   pX=x;
//   //   pY=y;
//   // } // конструктор со значениями по умолчанию
//   // Point({required this.x,required this.y}); // конструктор с параметрами который имеет имя
//   // Point({this.x,[this.y=0]);
//   // инициализаторы 
// }

// void main(){
//   // Point p=Point(3, 4);
//   // Point p1=Point.p();
//   // print(p1.x);
//   // print(p1.y);
//   // Point p=Point(x: 4, y: 7);
//   // print(p);

//   Person pr=Person("артем",18) // объявление экземпляров
//         ..name //каскадная нотация .. работает только тогда, когда есть переданные значения
//         ..age
//         ..printInfo;
//   Person pr1=Person(null,null);
//   Person pr2=pr1; //копирование объектов
//   pr1.name="dadsadd";
//   print(pr2.name); //копирование объектов с изменением
//   print(pr.name);
//   print(pr.age);
//   pr.printInfo(); 
//   pr1.printInfo(); 
//   pr2.printInfo(); 
// }





