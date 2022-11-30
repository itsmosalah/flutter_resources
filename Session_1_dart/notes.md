# Session 1: Dart Language

## Data types

`int`
`double`
`num`
`bool`

`String`
`List`
`Set`
`Map`

`dynamic` : Accepts any data type, changeable
`var` : Accepts any data type, unchangeable

`Function` : functions can declared, passed as objects or as anonymous functions: ((){})

## Null safety

```dart
   dynamic x; //nullable
   var x; //nullable

   int? x; // nullable, can be null

   int x;// non-nullable, must not be null (null is caught in compile-time)
   // must be initialized in constructor

   late int x;
   //will be initialized later. (null is caught in run-time)

   //some nullable field x
   !x; //null check operator. guarantees value not to be null from this point on.

   x ?? 5; // provide a default value in case x is null
```

## Datatypes examples

```dart
  int x = 5;
  double y = 5.2;
  num z = 3.2;
  bool isValid = false;

  String name = "Mohamed";

  //similar to a dynamic array
  List<int> lst = [1, 2, 3];

  //stores unique values
  Set<int> st = {2, 3, 4}; // or {}
  st.add(3); // no change to set

  //stores key-value pairs
  Map<String, int> ageOf = {"Mohamed": 20, "John Doe": 25}; // or {}

  ageOf["Mohamed"] = 21;

  //const
  const list1 = [1, 2, 3]; // reference itself is constant
  var list2 = const [1, 2, 3]; //value is constant, but reference can refer to something else (assigned)
```

## parameter list types

```dart
// arrow function, return
int fun(int a, int b) => a + b;

//arrow function, one line
void printSum(int a, int b) => print(a+b);
// return type can be nullable such as (int?)

// required (not null), positional parameters
int fun(int a, int b) =>  a + b;

// optional (nullable), positional parameters
void fun([int? a, int? b]) => ...

// optional (nullable), named parameters
void fun({int? a, int? b}) => ...

// required parameter and an optional parameter, both named
void fun({required int a, int? b}) => ...

// required parameters, one named, one isn't (has to be placed first)
void fun(int a, {required int b}) => ...
```

## OOP examples

these are classes made by me for demonstrating different fields and ways of constructing objects
there are more to this such as **named constructors** and **constant constructors** and more.
you can read about them [here](https://www.freecodecamp.org/news/constructors-in-dart/). _(Optional)_

```dart
class User {
  String email, username; //required
  late String name; // will be initialized but not necessarily from the parameter list
  String? country_name; // optional
  String bio; // required, but can take a default value
  final birthYear; // required, with a final value

  User({
    required this.email, //required fields, immediately initialized
    required this.username,
    required this.birthYear,
    String? name, // optional for the user
    this.country_name, //optional
    this.bio = "", // default value of a non-nullable.
  }) {
    //assigning the late field
    this.name = name ?? this.username;
  }
}

class Teacher extends User {
  String school_name, subject;
  Teacher({
    required this.school_name,
    required this.subject,
    //initializing parent
    required super.birthYear,
    required super.email,
    required super.username,
  }) {
    //logic
  }
}

class Student extends User {
  String school_name;
  int grade;
  late bool isSenior; //to be initialized later, based on the data given
  Student({
    required this.school_name,
    required this.grade,
    //initializing parent
    required int birthYear,
    required String email,
    required String username,
  })  : isSenior = (grade >= 10), //initializer list
        super(
            birthYear: birthYear, email: email, username: username); // initializing parent
}
```
