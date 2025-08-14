void main() {
  print("Hello, World!");
  String name = "Dart";
  print("Welcome to $name programming!");

  int num1 = 12, num2 = 8, res = num1 ~/ num2; // هتاخد الرقم الصحيح بس
  List<String> fruits = ["Apple", "Banana", "Cherry"];
  print(fruits);
  // for (String fruit in fruits) print(fruit);
  Map<String, int> scores = {"Alice": 90, "Bob": 85};
  print(scores);

  Set<String> colors = {
    "Red",
    "Green",
    "Blue",
    "Red",
  }; // Set does not allow duplicates
  print(colors);

  Set<int> numbers = {5, 4, 3, 2, 1, 1, 1, 1};
  print(numbers);
  numbers.add(6);

  bool r1 = false, r2 = true;

  if (r1 && r2)
    print("Both are true");
  else if (r1 || r2)
    print("At least one is true");

  int? x = 0, y = 5; // -> x can be null

  //بدل م افضل اشوف لو القيم مش ب null
  if (x != null) {
    print("x is not null");
  } else {
    print("x is null");
  }
  // الاسهل استخدم علامه !
  int answer = x! * y; //  معناها متقلقش كدا كدا هتكون بقيمه
  int aa = x!; // x is guaranteed to be non-null here
  // لو معملتش ال ! هيتعامل مع x ك null

  answer = x ?? y; // if x is null, use y instead
  print(x ?? 5.toDouble());
  // ?? operator returns the right operand if the left is null
  print(x!.toDouble()); // if x is not null, convert it to double

  for (int i = 0; i < 5; i++) {
    print("Iteration $i");
  }

  // for (var element in collection) {

  // }

  int i = 0;
  while (i < 5) {
    print("While iteration $i");
    i++;
  }
  i = 0;
  do {
    print("Do-while iteration $i");
    i++;
  } while (i < 5);

  // for each loop -> for lists
  List<int> numbersList = [1, 2, 3, 4, 5];
  numbersList.forEach((var item) {
    print(item);
  });

  print(printName("shahd"));

  print(
    calculateDiscount3(
      price: 100,
      discount: 10, // named parameters
    ),
  );
}

String printName(String name) {
  return "Hello, $name";
}

double calculateDiscount(double price, [double? discount]) {
  // optional parameter
  return price - (price * discount! / 100);
}

double calculateDiscount1(double price, [double discount = 0]) {
  // optional parameter
  return price - (price * discount / 100);
}

double calculateDiscount2(double price, [double discount = 0, double tax = 0]) {
  // optional parameter
  return price - (price * discount / 100);
}

double calculateDiscount3({required double price, double discount = 0}) {
  // named parameters
  // optional parameter
  return price - (price * discount / 100);
}

// named parameters -> بتخلي الحاجه عندي اختياريه ف  لازم اعملها  nullable
// عشان اتجنب دا  هستخدم ال required


//optional parameters -> بتيجي ف الاخر 
//primitive data types
// int, double, String, bool , dynamic
// collection data types
// List, Set, Map
//عشان اخلي ال string يظهر زي م هو 
// string name = r"Dart \t  \n Programming";   -> r ترمز ل raw data 
//num data type accepts both int and double
//dynamic data type accepts any type of data
//dynamic name = "Dart"; // can be reassigned to int, double, etc.
//var name = "Dart"; // type is inferred as String

// في حاله استخدمت var 
// لكن معرفتش نوع المتغير
// هيتعرف على انه dynamic
