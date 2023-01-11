import 'dart:io';

class Reverse {
  void rev() {
    stdout.write("Enter the Number :- ");
    int num = int.parse(stdin.readLineSync() as String);
    int rem,rev = 0;
    while (num != 0) {
      rem = num%10;
      rev = rev*10+rem;
      num = num ~/ 10;
    }
    print("Reverse Number :- $rev");
  }
}

void main(List<String> args) {
  Reverse obj = Reverse();


  obj.rev();
}
