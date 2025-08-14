import 'Human.dart';

void main() {
  // Human person = Human("Alice", 30); // to create and build an object
  Human person = Human(name: "Alice", age: 30); // using named parameters
  person.greet();

  person.numberOfArms = 2; // using setter to set the number of arms

  // exception implementation
  try {
    person.numberOfArms = 3; // trying to set an invalid value
  } on RangeError catch (e) {
    print("Range Error: ${e.message}");
  } catch (e) {
    print("Error: $e");
  }
}


// method -> هي function متعرفه جوا class
//this is a simple Dart program that defines a class `Human` with properties and a method.


// encapsulation -> hiding the implementation details and exposing only what is necessary

// abstraction -> hiding the complexity and showing only the essential features

// عشان اخلي ال attribute private بستخدم underscore _
// inheritance -> creating a new class that is based on an existing class
// polymorphism -> the ability to present the same interface for different data types


// exception types 
// syntax error -> when the code does not follow the syntax rules of the language
// runtime error -> when the code is executed and an error occurs
// logical error -> when the code runs without errors but does not produce the expected result