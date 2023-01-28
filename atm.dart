import 'dart:io';

class Bank {
  void atm() {
    int? ans;
    int amount = 10000;
    stdout.write("Register Your Pin :- ");
    int rp = int.parse(stdin.readLineSync() as String);

    do {
      print("\n1. Withdraw Cash");
      print("2. Deposit Cash");
      print("3. Check Balance");
      stdout.write("\nEnter Any Choice :- ");
      int choice = int.parse(stdin.readLineSync() as String);

      switch (choice) {
        case 1:
          stdout.write("Enter Your Pin :- ");
          int ep = int.parse(stdin.readLineSync() as String);
          if (rp == ep) {
            stdout.write("Enter Withdraw Amount :- ");
            int wa = int.parse(stdin.readLineSync() as String);
            if (amount >= wa) {
              int bal = (amount) - (wa);
              stdout.write("Your Balance :- $bal");
              stdout.write("Please Collect Your Money");
            } else {
              stdout.write("Insufficient Balance");
            }
          } else {
            print("Invalid Pin");
          }
          break;
        case 2:
          stdout.write("Enter Your Pin :- ");
          int ep = int.parse(stdin.readLineSync() as String);
          if (rp == ep) {
            stdout.write("Enter Deposit Amount :- ");
            int da = int.parse(stdin.readLineSync() as String);
            int bal = (amount) + (da);
            stdout.write("Your Balance :- $bal");
          } else {
            print("Invalid Pin");
          }
          break;
        case 3:
          stdout.write("Enter Your Pin :- ");
          int ep = int.parse(stdin.readLineSync() as String);
          if (rp == ep) {
            stdout.write("Your Balance :- $amount");
          } else {
            print("Invalid Pin");
          }
          break;
        default:
          print("Invalid Transaction");
      }
      stdout.write("\nDo You Want to Continue(Y/N) :- ");
      // String ans = stdin.readLineSync() as String;
      ans = int.parse(stdin.readLineSync() as String);
    } while (1 == ans);
  }
}

void main(List<String> args) {
  Bank obj = Bank();
  obj.atm();
}
