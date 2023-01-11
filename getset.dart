class Myclass {
  var Name;
  get getdata {
    return Name;
  }

  set setdata(var name) {
    Name = name;
  }
}

void main(List<String> args) {
  Myclass obj = Myclass();

  obj.setdata = "Vishal Savaliya";
  print("My name is ${obj.getdata}");
}
