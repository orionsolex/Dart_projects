class Person {
  final name = "ivan";
  static const old = 777;
}

void main() {
  const pi = 3.14;
  final middleName = 'Pupkin';
  print(middleName);

// Number (int, double)
  double my_weigth = 65.3;
  print(my_weigth.runtimeType);

  //Boolean (true, false)
  bool isChildren = true;
  print(isChildren.runtimeType);

  //String (UTF-16) пишется с строчной буквы
  String my_name = 'Alex'; //можно исп любые кавычки
  String my_nik = "sky реальное имя: $my_name"; //интерполяция с $
  print(my_nik);
  String my_CAPSnik = "CAPS ${my_name.toUpperCase()}"; //методы с $
  print(my_CAPSnik);
  String frase = 'What\'s you name?'; //кавычку нужно экранировать \
  String multyLineText = '''
  First line                  
  Second line
  '''; //многострочный текст заключается между '''
  print(multyLineText);

  //Runes (UTF-32) тоде строки
  Runes hello = Runes('\u041F\u0440\u0438\u0432\u0435\u0442');
  print(hello);
  print(String.fromCharCodes(hello));

  //Symbol
  Symbol s = #f; //представляет символ f
  print(s);
}
