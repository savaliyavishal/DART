import 'dart:io';

class Square 
{
  void square() {
    print("*****Square*****");
    stdout.write("Enter the Number = ");
    int num = int.parse(stdin.readLineSync() as String);
    print("SQUARE = ${num * num}");
  }
}

class Cube
{
  void cube() {
    print("*****CUBE*****");
    stdout.write("Enter the Number = ");
    int num = int.parse(stdin.readLineSync() as String);
    print("CUBE = ${num * num * num}");
  }
}

void main(List<String> args) {
  Square obj = Square();
  Cube obj1 = Cube();

  obj.square();
  obj1.cube();
}
