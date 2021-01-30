// import 'dart:collection';
// import 'dart:html';

// import 'package:english_words/english_words.dart';
// import 'dart:developer';
// import 'dart:html';

import 'package:flutter/material.dart';

var name = 'Alexxxxcc';
var year = 1997;
var height = 174.4;
var d = ['asdasd', 2, 0.3, 'Net'];

var image = {
  'tag': ['staurn'],
  'url': '//path/to/saturn.jpg'
};

FixedColumnWidth width = new FixedColumnWidth(1);

void func() {
  if (year > 2001) {
    print('21 year js ');
  }
}

dynamic name1 = 'Bob';
String Name = 'Bob';

int lineCount;

void func2() {
  assert(lineCount == null);
}

//必须在构造函数体执行之前初始化final  实例变量---- 在变量声明中，参数构造函数中或构造函数的初始化列表中进行初始化。
final name2 = 'BobNeverChanged';
final String nickname = 'Bobby';
//final 不能被修改
// name2 = 'Alice';  // error

// // 编译时期就固定的值 可以使用const类型变量。
// 如果Const变量 是类级别的 需要标记为 static const。
// 在这些地方可以使用在编译时就已经固定不变的值，字面两的数字和字符串，固定的变量

const bar = 1000000;
const double atm = 1.0132 * bar;

//内建类型
//  Number String Boolean
//  List Map Set
//  Rune Symbol
//  这些类型都可以被初始化为字面量

//  dart 所有变量是一个对象 所以可以通过 构造 初始化
//  Map() -->  map的构造方式

// 一  Number 类型

// int    -2^63到 2^63-1
// double   num亚类型
double z = 1;
// 从 2.1 开始 必要的时候 int 会自动转换double  2.1 之前 是错误的
var one = int.parse('1');

var onePointOne = double.parse('1.1');

String oneAsString = 1.toString();

String piAsString = 3.14159.toStringAsFixed(2);

void func3() {
  assert(one == 1);
  assert(onePointOne == 1.1);
  assert(oneAsString == '1');
  assert(piAsString == '3.14');
}

// 常量得到常量
const msPerSecond = 1000;
const secondsUntilRetry = 5;
const msUntilRetry = secondsUntilRetry * msPerSecond;

// 二  String 类型
var s1 = 'Single quotes work well ';

var s2 = "";

var s3 = 'It\'s me!';

var s4 = "It's me !";

var s = 'string interpolation';

var sx = 'String' 'concatenation' "works even over line breaks";

var sx2 = 'the  + operator' + 'works ,as well';

var sx3 = ''' 
    the asd format 
''';

var sx4 = r" \n isn't special ! ";

const aConstNum = 0;
const sx5 = '$aConstNum';

var aNum = 5;
// const sx52 = '$aNum';

// 三 boolean
// 检查
var fullName = '';
var hitPoints = 0;
var unicoin;
var iMeanToDoThis = 0 / 0;

void funcString() {
  assert(fullName.isEmpty);
  assert(hitPoints <= 0);
  assert(unicoin == null);
  assert(iMeanToDoThis.isNaN);
}

//四 List
var list = [1, 2, 3];

void funcx() {
  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);
}

var constList = const [1, 2, 3];

//五 Set

var set = {'a', 'b', 'c', 'd', 'e'};
// Set<String>

var names = <String>{};
Set<String> names2 = {};

var namesmap = {}; // Map

var namesmapx = <dynamic, dynamic>{}; // Map 默认范型

// Set
var test = <String>{};

void funct() {
  test.add('ffff');
  test.addAll(set);

  assert(test.length == 5);
}

final elements = const {'a', 'b', 'v', 'c', 'x'};

// 六 Map
var gifts = {
  'first': 'p',
  'second': '2f',
  'fifth': '5o',
};

var nobleGases = {
  2: 'height',
  10: 'neon',
  18: 'argon',
};

var gifts2 = new Map();
//new 省略
var nobleGases2 = Map();

void funcv() {
  gifts['first'] = 'h';
  nobleGases[2] = 'sadad';
}

var giftsx = {"first": "partridge"};
void funcb() {
  giftsx['fourth'] = "asdasd";
}

final constMap = const {2: 'helium', 10: 'neon', 18: 'argon'};

// Rune 表示 UTF-32 编码字符

void main0() {
  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  Runes input = new Runes(
      '\u2665 \u{1f605} \u{1f60e} \u{1f47b} \u{1f596} \u{1f44d} \u{1f44f}');
  print(new String.fromCharCodes(input));
}

// Symbol 对象表示 Dart程序中声明的运算符号或者表示符号。你也永远都不需要使用Symbol

// 函数
// bool isNoble(int atomicNumber) {
//   return _nobleGases[atomicNumber] != null;
// }

// dart-samples({Key key, @required Widget child}){}

String say(String from, String msg, [String device]) {
  var result = '$from says $msg ';
  if (device != null) {
    result = '$result with a $device ';
  }
  return result;
}

void enableFlags({bool bold = false, bool hidden = false}) {
  enableFlags(bold: true);
}

void doStuff(
    {List<int> list = const [1, 2, 3],
    Map<String, String> gifts = const {
      '1': 'one',
      '2': 'two',
      '3': 'three',
    }}) {
  print('list: $list');
  print('gifts:$gifts');
}

main1(List<String> args) {
  // querySelector('#sample_text_id')
  //   ..text = 'Click me !'
  //   ..onClick.listen((event) {
  //     // reverseText
  //   });
}

//函数 是一等对象
void printElement(int element) {
  print(element);
}

var listx = [1, 2, 3];

// void demoxx() {
//   listx.forEach((element) {
//     printElement(element);
//   });
// }

void demoxx() {
  listx.forEach(printElement);
}

void demoFunc() {
  var loudify = (msg) => '!!!${msg.toUpperCase()} !!!';
  assert(loudify('hello') == ' !!! HELLO !!!');
}

void demoFunCx() {
  list.forEach((element) {});
}

//测试函数是否相等
void foo() {}

class A {
  static void bar() {} //方法1 静态
  void baz() {} //方法 2
}

main(List<String> args) {
  var x;

  //比较顶级函数
  x = foo;
  assert(foo == x);

  // 比较静态方法
  x = A.bar;
  assert(A.bar == x);

  var v = A();
  var w = A();
  var y = w;
  x = w.baz;

  assert(y.baz == x);
  assert(v.baz != w.baz);
  assert(v.baz != w.baz);
}

class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);

  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);
}

void main3() {
  final v = Vector(2, 3);
  final w = Vector(2, 2);

  assert(v + w == Vector(4, 5));
  assert(v - w == Vector(0, 1));
}

bool isPublic;

void fudfu() {
  var visibility = isPublic ? '' : 'private';

  switch (isPublic) {
    case true:
      break;
    default:
  }
}

// main4(List<String> args) {
//   querySelector('#confirm')
//     ..text = 'Confirm'
//     ..classes.add('important')
//     ..onClick.listen((event) {
//       window.alert('Confirmed');
//     });

//   func();
// }

// void funcxx() {
//   var button = querySelector('#confirm');
//   button.text = 'Confirm';
//   button.classes.add('important');
//   button.onClick.listen((event) {
//     window.alert('Confirmed!');
//   });
// }
