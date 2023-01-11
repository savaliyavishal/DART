class Myclass {
  Myclass(a, b) {  /*Parameterized Constructor*/
    print("Sum = ${a + b}");
  }

  Myclass.Class1(a, b) {  /*Named Constructor*/
    print("Sum = ${a + b}");
  }

  Myclass.Class2() {
    print("Sum = ${50 + 20}");
  }
}

void main(List<String> args) {
  // Myclass obj = Myclass(10, 20);
  // Myclass obj1 = Myclass.Class1(10, 20);
  // Myclass obj2 = Myclass.Class2();

  Myclass(10, 20);
  Myclass.Class1(10, 20);
  Myclass.Class2();
}
