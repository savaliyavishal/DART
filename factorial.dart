import 'dart:io';

class Factorial {
  void factorial() {
    var fact = 1;
    stdout.write("Enter the Number :- ");
    int n = int.parse(stdin.readLineSync() as String);
    for (int i = 1; i <= n; i++) {
      fact = fact * i;
    }
    stdout.write("Factorial of $n is :- $fact");
  }
}

void main(List<String> args) {
  Factorial obj = Factorial();
  obj.factorial();
}
