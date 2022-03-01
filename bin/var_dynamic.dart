void main() {
  dynamic message = true; //dynamic позволяет менять тип данных
  message = "тип изменился на String";
  print(message.runtimeType);
  var number = 10;
  print(number.runtimeType);
}
