import 'dart:io';

class Admin {
  var p1;
  var p2;
  var ans;
  void admin() {
    stdout.write("\n1. ADD ADMIN");
    stdout.write("\n2. LOGIN ADMIN");
    stdout.write("\nEnter Your Choice :- ");
    var choice = int.parse(stdin.readLineSync() as String);
    switch (choice) {
      case 1:
        stdout.write("Enter Your Name :- ");
        var rn = stdin.readLineSync() as String;
        stdout.write("Enter Your Email :- ");
        var rm = stdin.readLineSync() as String;
        stdout.write("Enter Your Password :- ");
        var rp = stdin.readLineSync();
        break;
      case 2:
        stdout.write("Enter Your Email :- ");
        var em = stdin.readLineSync() as String;
        stdout.write("Enter Your Password :- ");
        var ep = stdin.readLineSync();
        break;
      default:
        print("Invalid Admin Choice");
    }

    stdout.write("Product 1 :- ");
    p1 = stdin.readLineSync();
    stdout.write("Product 2 :- ");
    p2 = stdin.readLineSync();

    List product = [p1, p2];
    print("YOUR PRODUCTS $product");

    do {
      stdout.write("1. Add Product");
      stdout.write("\n2. Show Product");
      stdout.write("\n3. Change Product");
      stdout.write("\n4. Delete Product");
      stdout.write("\nEnter Choice :- ");
      int choice1 = int.parse(stdin.readLineSync() as String);

      switch (choice1) {
        case 1:
          stdout.write("Enter Your Product Name :- ");
          var add = stdin.readLineSync() as String;
          product.add(add);
          break;
        case 2:
          stdout.write("We have These Product $product");
          break;
        case 3:
          stdout.write("Enter The Number(int) of Product You Want to Change:- ");
          var replace = int.parse(stdin.readLineSync() as String);
          stdout.write("Enter New Product :- ");
          var newproduct = stdin.readLineSync();
          product[replace] = newproduct;
          break;
        case 4:
          stdout.write("Enter the Name You Want to Remove :- ");
          var remove = stdin.readLineSync() as String;
          product.remove(remove);
          break;
        default:
      }
      stdout.write("\nDo you want to Continue[Y-1] :- ");
      ans = int.parse(stdin.readLineSync() as String);
    } while (ans == 1);
  }
}

class User extends Admin {
  void user() {
    var total;
    int? q1;
    int? q2;
    var ans;
    stdout.write("\n1. ADD USER");
    stdout.write("\n2. LOGIN USER");
    stdout.write("\nEnter Your Choice :- ");
    var choice = int.parse(stdin.readLineSync() as String);
    switch (choice) {
      case 1:
        stdout.write("Enter Your Name :- ");
        var rn = stdin.readLineSync() as String;
        stdout.write("Enter Your Email :- ");
        var rm = stdin.readLineSync() as String;
        stdout.write("Enter Your Password :- ");
        var rp = stdin.readLineSync();
        break;
      case 2:
        stdout.write("Enter Your Email :- ");
        var em = stdin.readLineSync() as String;
        stdout.write("Enter Your Password :- ");
        var ep = stdin.readLineSync();
        break;
      default:
        print("Invalid User Choice");
    }

    do {
      stdout.write("\n1. $p1 RS.12");
      stdout.write("\n2. $p2 RS.18");
      stdout.write("\n3.TOTAL BILL");
      stdout.write("\nEnter Choice :- ");
      int choice1 = int.parse(stdin.readLineSync() as String);
      switch (choice1) {
        case 1:
          stdout.write("\nYou Select $p1");
          stdout.write("\nQuantity :- ");
          q1 = int.parse(stdin.readLineSync()!);
          total = q1 * 12;
          break;
        case 2:
          stdout.write("\nYou Select $p2");
          stdout.write("\nQuantity :- ");
          q2 = int.parse(stdin.readLineSync()!);
          total = q2 * 18;
          break;
        case 3:
          stdout.write("\nTotal ordered $p1:- $q1");
          stdout.write("\nTotal ordered $p2:- $q2");
          stdout.write("\nTotal bill :- $total");
          break;
        default:
      }
      stdout.write("\nDo you want to Continue[Y-1] :- ");
      ans = int.parse(stdin.readLineSync() as String);
    } while (ans == 1);
  }
}

void main(List<String> args) {
  User obj = User();
  var ans;
  do {
    stdout.write("1. ADMIN");
    stdout.write("\n2. USER");
    stdout.write("\nEnter Your Choice :- ");
    var choice = int.parse(stdin.readLineSync() as String);
    switch (choice) {
      case 1:
        obj.admin();
        break;
      case 2:
        obj.user();
        break;
      default:
        print("Invalid Choice");
    }
    stdout.write("\nDo you Want to switch to other panel[Y-1] :- ");
    ans = int.parse(stdin.readLineSync() as String);
  } while (ans == 1);
}
