class Human {
  String? name;
  int? age;
  int _numberOfArms = 2; // private attribute لكن في فايل تاني

  // Human(String _name, int _age) {
  //   name = _name;
  //   age = _age;
  // }

  Human({this.name, this.age});
  // Constructor with named parameters

  void greet() {
    print("Hello, my name is $name and I am $age years old.");
  }

  // void SetNumberOfArms(int numberOfArms) {
  //   if (numberOfArms >= 0 && numberOfArms <= 2) {
  //     _numberOfArms = numberOfArms;
  //   } else {
  //     print("Number of arms must LESS than or equal to 2.");
  //   }
  // }

  // int GetNumberOfArms() {
  //   return _numberOfArms;
  // }
  set numberOfArms(int numberOfArms) {
    if (numberOfArms >= 0 && numberOfArms <= 2) _numberOfArms = numberOfArms;
  } // setter function

  int getnumberOfArms() => _numberOfArms; // arrow function

  int get numberOfArms => _numberOfArms; // getter function
}

// بدل ال methods -> هستخدم getters and setters
