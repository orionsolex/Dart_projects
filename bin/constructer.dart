void main(List<String> args) {
  var grade = 5;

  //if else
  if (grade == 5) {
    print("grade is 5");
  } else {
    print("grade is not 5");
  }

  var marks = 80; //else if
  if (marks >= 90 && marks < 100) {
    print('Покупай');
  } else if (marks >= 80 && marks < 90) {
    print('Продавай');
  } else if (marks >= 70 && marks < 80) {
    print('Жди');
  } else {
    print('недопустимое значение marks');
  }

  int x = 1;
  int y = 2;
  int z = x < y ? (x + y) : (x - y); //короткая запись
  print(z);

  //Switch Case
  switch (x) {
    case 0:
      print("Продавай");
      break; //заканчивать case break или др
    case 1:
      print('Покупай');
      break; //заканчивать case break или др
    default:
      print("Error");
      break;
  }

  //do while выполняется хотябы 1 раз
  int counter = 0;
  do {
    counter++;
    if (counter == 2) {
      continue; //или пропускаем 2, еще break
    }
    print("Counter is $counter");
  } while (counter <= 4);

//while
  while (y < 5) {
    print("While $y");
    y++;
  }

  //For
  for (var i = 0; i < 5; i++) {
    if (i % 2 == 0) {
      //делится без остатка, четные числа
      print("Beware!$i");
    }
  }
}
