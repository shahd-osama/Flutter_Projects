class Animal {
  int numberOfLegs = 4;
  String skinColor;
  int weight;
  late String name; // late keyword means it will be initialized later
  Animal(this.skinColor, this.weight);

  void eat() {
    print("Eating...");
  }

  Animal.namedConstructor(this.skinColor, this.weight);
}

class Lion extends Animal {
  //Lion(String skinColor, int weight) : super(skinColor, weight); // Constructor chaining
  Lion(
    super.skinColor,
    super.weight,
  ); // Using super to pass parameters to the parent class constructor

  @override
  void eat() {
    print("Lion is eating meat...");
  }
}

class Dog extends Animal with PlayableMixin, CuteMIxin {
  Dog(super.skinColor, super.weight);

  @override
  void eat() {
    print("Dog is eating bones...");
  }
}

abstract class Pet extends Animal {
  Pet(super.skinColor, super.weight);

  void play(); // Abstract method
}

mixin PlayableMixin {
  void play() {
    print("Playing...");
  }
}

mixin CuteMIxin {
  void IsCute() {
    print("Soo Cute...");
  }
}

enum AnimalType { Mammal, Reptile, Bird, Fish }

//polymorphism اي كلاس بيرث من كلاس بيكونوا اشكال متعدده منه 
// يعني اقدر مثلا اعمله ليسته من ال Animals 
//Lion lion = Lion("Golden", 200);
//Dog dog = Dog("Brown", 30);
//Cat cat = Cat("Black", 10);
//List<Animal> animals = [lion الاسامي بس  , dog , cat];

// extends      ]
//              |  -> الاتنين عشان نعمل inheritance
// implements   ] 

// implements معناها بيرث منه ولازم ينفذ كل حاجه فيه  بنفس الشكل 

//named constructor بيكون ليها خصايص تانيه 

// late keyword معناها ان المتغير هيتعمله initialisation بعدين

// mixins -> هقدر اورث منه مع حاجات تانيه 
//   |
// بس عشان استخدمها بستخدم الكلمه  with 

// الاولويه هتكون ل mixin لو عندي اكتر من حاجه مشتركه بينها وبين اي كلاس تاني 

// object class -> List < Object> animals = [lion, dog, cat]; // List of objects

// ايه الاستفاده من ال  object class ممكن اخد منه شويه methods زي ال toString() method

// anynomous objects ->
// List<Animal> animals = [Lion("Golden", 200), Dog("Brown", 30), Cat("Black", 10)];
// ملهاش اسم ومبهاش لازم اعرف اسمها 