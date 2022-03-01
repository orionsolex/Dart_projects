void main(List<String> args) {
  var list1 = [1, 2, 3, 4];
  List<int> lst2 = [1, 2, 3, 4, 5];
  var list3 = [1, "Hello", true];
  var list4 = [
    list1,
    [1, 2, 3],
    [true, false]
  ];

  //Фиксированные списки
  List ListofValue = List.filled(5, 0); //список с динамическим содержимым
  List<int> numberList = List.filled(5, 0);
  numberList[0] = 22; //insert operation
  //numberList[1]=null;
  print(numberList);
  for (var i = 0; i < numberList.length; i++) {
    print(numberList[i]);
  }
  for (var element in numberList) {
    print(element);
  }
  numberList.forEach((element) {
    print(element);
  });

  //список переменной длины
  List numberList2 = List.empty(growable: true);
  numberList2.add(1);
  numberList2.add("Hello");
  numberList2.add("dinner");
  numberList2.forEach((element) {
    print(element);
  });
  print("Deleting elemetns:");
  numberList2.remove("Hello");
  numberList2.removeAt(0);
  numberList2.forEach((element) {
    print(element);
  });

  var set = {1, 2, 3};
  Set<int> set1 = {1, 2, 3};
  var set3 = <int>{1, 2, 3};
  Set set4 = Set.from([1, "Hello", true]);
  Set set5 = Set();
  set5.add("Alex");
  set5.forEach((element) {
    print(element);
  });
  set.contains(1);
  set.remove(2);
  set.isEmpty;

  var map = {"key1": "value1", "key2": "value2"};
  Map<int, String> map1 = {1: "value1", 2: "value2"};
  Map trafficLight = Map();
  trafficLight["red"] = 'stop';
  trafficLight["yellow"] = 'ready';
  print(trafficLight);
  trafficLight["yellow"] = 'wait';
  for (var key in trafficLight.keys) {
    print(key);
  }
  trafficLight.forEach((key, value) {
    print("key: $key, value: $value");
  });

  print(trafficLight.containsKey("red"));
  trafficLight.update("yellow", (value) => "green");
  trafficLight.remove("green");
  trafficLight.length;
}
