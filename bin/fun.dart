void main(List<String> args) {
  sayHello();
  getBoss(name: "Ангус", age: 22);
  getBoss(name: "Ангус"); //age будет null
  var x = sayHello; // Создали обект-функцию
  x();
  sayMyname(sayHello);
  Function y = getNameOrLastName("ivan");
  y();

  Function addTwoNumbers = (int a, int b) {
    //объявление анонимной функции
    Function summ = (int x, int y) => print(x + y); //короткая запись
    var sum = a + b;
    print(sum);
  };

  addTwoNumbers(1, 2);

  int result =
      operationNumbers(5, 2, (a, b) => a * b); //пример исп анонимной функции
  print(result);
}

void sayHello() => print("Hello");
void sayBy() => print("By");

void getPerson(name, age) {
  //пропустили обявление параметров
  print("Name: $name, age: $age");
}

void getCat(name, [age]) {
  //определили параметр необязательным, получить null
  print("Name: $name, age: $age");
}

void getBoss({name, age}) {
  //определили параметры именованными
  print("Name: $name, age: $age");
}

void getDefault({name = "buba", age}) {
  //определили значение по умолчанию
  print("Name: $name, age: $age");
}

void sayMyname(Function sameFun) {
  //функция в качестве параметра
  sameFun();
}

Function getNameOrLastName(String nameOrLastName) {
  //функция возвращающая функцию
  if (nameOrLastName == "alex") {
    return sayHello;
  } else {
    return sayBy;
  }
}

int operationNumbers(int a, int b, Function operation) {
  //пример исп анономной функции
  return operation(a, b);
}
