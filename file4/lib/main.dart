void main() {

  Student s1 = Student(name: 'sid', age: 22);
  ITGuy g1 = ITGuy(myname: 'mahi', myage: 20);
  Student.collegeName = 'lpu';
  print(g1.name);
  g1.setitname('raga');
  print(g1.getName());
}

class Student {
  String? name;
  int? age;
  static String? collegeName;

  /* Student(String name, int age) {
    this.name = name;
    this.age = age;
  } */

  Student({required String name, required int age}) {
    this.name = name;
    this.age = age;
    print('called student construtor');
  }
  String? getName() {
    return name;
  }
}

class ITGuy extends Student implements WriteCode, TestCode, GiveInterview {
  ITGuy({required String myname, required int myage})
      : super(name: myname, age: myage) {
    super.age = age;
    super.name = name;
    print('called ITguy construtor');
  }
  String? itname;
  void setitname(String itname) {
    this.itname = itname;
  }

  @override
  String? getName() {
    print(super.getName());
    return itname;
  }

  @override
  String writeCode() {
    // TODO: implement writeCode
    return 'it code';
  }

  @override
  bool giveInterview() {
    // TODO: implement giveInterview
    return true;
  }

  @override
  bool testCode() {
    // TODO: implement testCode
    return true;
  }


}


class WriteCode {
  String writeCode() {
    return 'code';
  }
}

class GiveInterview {
  bool giveInterview() {
    return true;
  }
}

class TestCode {
  bool testCode() {
    return true;
  }
}
 