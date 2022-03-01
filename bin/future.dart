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

printFileContent() {
Future<String> fileContent=downloadfile();
fileContent.then((value) => print("The content on the file is-->$value")).catchError((error)=>print("the file not found"));
}
