Stream<int> boatStream() async* {
  for (int i = 1; i <= 10; i++) {
    print('Sent Boat no. ' + i.toString());
    await Future.delayed(Duration(seconds: 2));
    yield i;
  }
}
void main(List<String> args) async{
  Stream<int> stream=boatStream();
  stream.listen((event) {
    print('Received Boat No .'+event.toString());
  });
}
