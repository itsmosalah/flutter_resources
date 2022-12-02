# Task #1

## _Note: use the given declaration as it is, then add the implementation required_

## _Steps:_

- Create a `main.dart` file, define the `main()` function
- For each challenge
  - Copy the provided code to the `main.dart` file
  - Complete the code according to the challenge
  - Of course, use the `main()` function to run and test your functions, **but do not forget to remove your testing code after you finish testing.**
- At the 4-th challenge, copy the function `printUs`, copy the class `Student` and the `main()` definitions as they are, then add your code

## _After finishing, submit your `main.dart` file in this: [form](https://forms.gle/mKjMRwaeqKd1vWrE9)_

### Challenge 1:

- implement the funtion `getRange` where it should return the differnce between the **maximum** and the **minimum** values in the given list.
  _(if there are none, return 0)_

```dart
    int getRange(List<int?>list){
        //write your code here
    }
```

- example:

```bash
passed list: [3, -3, 10, 0, null]
returned value: 13
```

<details>
<summary>Hint</summary>

Values are nullable, maybe we can filter out the nulls first?

</details>

### Challenge 2:

- Given a List of names, return the name that has occurred the most.
  _(If there could be multiple answers, return any. At least 1 name is guaranteed to be in the List passed)_

```dart
    String getMostTrending(List<String>list){
        //write your code here
    }
```

<details>
<summary>Hint 1</summary>

Is there something that can link a name to number?

</details>
<details>
<summary>Hint 2</summary>

If we can link a name to the number of times it occurred, we will know who occurred the most!

</details>

- example:

```bash
list: ["MoSalah", "Ahmed", "Rawan", "MoSalah", "Ali", "Mariam"]
returned value: "MoSalah"
```

### Challenge 3:

- Fill in the gaps: Determine a proper _Data type_ for the following initialization. then use `print()` to print the number of friends **Mohamed** has according to this data.

```dart
void countMyFriends() {
  ______ data = {
    "id": 1,
    "name": "Mohamed",
    "age": 20,
    "interests": ["writing", "drawing", "biking", "coding", "gaming", "singing"],
    "friends": [
      {
        "id": 2,
        "name": "Ali",
        "age": 19,
        "common_interests": ["drawing", "biking"]
      },
      {
        "id": 3,
        "name": "Mariam",
        "age": 21,
        "common_interests": ["writing"]
      },
      {
        "id": 4,
        "name": "Mishmish",
        "age": 2,
        "common_interests": ["singing"]
      }
    ]
  };

  print(_____); //number of friends Mohamed has, which should be 3 according to the data
}
```

<details>
<summary>Hint 1</summary>

This data looks structured, for each string there is some corresponding value

</details>
<details>
<summary>Hint 2</summary>

We need something that can store key-value pairs, and then we need to determine the suitable data type

</details>

### Challenge 4 (BONUS):

- _Note: Copy the following code into your `main.dart`, then implement the function as instructed. Your output should match the given output sample._

- We have a list of students, we need to print students' names ordered by age, where the youngest comes first. After that, we need to re-order them so that the most Da7ee7 comes first. ie: those with greater GPA come before those with less GPA.

```dart

class Student {
  double GPA;
  int age;
  String name;
  Student({required this.name, required this.age, required this.GPA});
}

void printUs(List<Student> students) {
  print("Names after ordering by age (ascending):");
  // Print names sorted by age (increasing, ie. ascending)

  print("\n. Names after ordering by GPA (descending):");
  // Print names sorted by GPA (decreasing, ie. descending)
}

void main(List<String> args) {
  List<Student> students = [
    Student(name: "MoSalah", age: 20, GPA: 3.1),
    Student(name: "Ashraf", age: 20, GPA: 3.2),
    Student(name: "Mariam", age: 21, GPA: 3.9),
    Student(name: "Rawan", age: 19, GPA: 3.8),
    Student(name: "Anas", age: 22, GPA: 3.0),
  ];

  printUs(students);
}
```

- example output:

```bash

Names after ordering by age (ascending):
Rawan
MoSalah
Ashraf
Mariam
Anas

Names after ordering by GPA (descending):
Mariam
Rawan
Ashraf
MoSalah
Anas
```

<details>
<summary>Hint 1</summary>

We normally sort lists using `sort()`, but at this case we have a user-defined class with multiple fields (age, GPA, name...). The program does NOT know that want to sort objects based on age or GPA. How can we make it know that?

</details>

<details>
<summary>Hint 2</summary>

Take strings as an example. To compare strings S1 and S1, we use S1.compareTo(S2). Now we want to compare students, can we perhaps define `compareTo()` to match our situation somehow?

</details>
<details>

<summary>Hint 3</summary>

[Take a look here](https://stackoverflow.com/questions/53547997/sort-a-list-of-objects-in-flutter-dart-by-property-value)

</details>
