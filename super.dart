class A {
  var x = 100, y = 200;

  void vs() {
    print("Sum(x+y) = ${x + y}");
  }
}

class B extends A {
  var x1 = 200, y1 = 200;

  void vs() {
    // print(x);
    // print(super.x);
    print("Sum(x1+y1) = ${x1 + y1}");
  }

  void ans() {
    vs();
    super.vs();
  }
}

void main(List<String> args) {
  B obj = B();

  // obj.vs();
  obj.ans();
}
