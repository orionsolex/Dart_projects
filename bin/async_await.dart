import 'dart:html'; //на ВМ VScode не работает

void main(List<String> args) {
  print("The main programm: Starts");
  printFileContent();
  print("The main programm: Ends");
}

downloadfile() {
  Future<String> result = Future.delayed(Duration(seconds: 5), () {
    return HttpRequest.getString('https://dart.dev/f/dailyNewsDigest.txt');
  });

  return result;
}

printFileContent() async {
  //превратили метод в асинхр
  try {
    String time1 =
        await HttpRequest.getString("https://rebounce.online/api/time");
    print(time1);

    String fileContent = await downloadfile(); // await работает в паре с async
    print("The content on the file is-->$fileContent");

     String time2 =
        await HttpRequest.getString("https://rebounce.online/api/time");
    print(time2);
  } catch (e) {
    print("Catching error: $e");
  }
}
