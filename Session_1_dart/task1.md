
# Task #1

## *Note: use the given declaration as it is, then add the implementation required*
## *Submit your solution in this: [form](https://forms.gle/mKjMRwaeqKd1vWrE9)*

### Challenge 1:
- implement the funtion `get range` where it should return the differnce between the **maximum** and the **minimum** values in the given list. 
*(if there are none, return 0)*

```dart
    int getRange(List<int?>list){
        //write your code here
    }
```
- example:
```bash
input: [3, -3, 10, 0]
output: 13
```

### Challenge 2:
- Given a List of names, return the name that has occurred the most. 
*(If there could be multiple answers, return any. At least 1 name is guaranteed to be in the List passed)*


```dart
    String getMostTrending(List<String>list){
        //write your code here
    }
```

- example:
```bash
input: ["MoSalah", "Ahmed", "Rawan", "MoSalah", "Ali", "Mariam"]
output: "MoSalah"
```

### Challenge 3:
- Store *all of the following values* in *ONE* variable. then use `print(...)` to print the number of friends **Mohamed** has.


```dart
{
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
}
```
- Implement your code in the following function

```dart
void countMyFriends(){
    //write your code here
}
```


### Challenge 4 (BONUS):
- 
*Note: Copy the following code into your `main.dart`, then implement the function as instructed. Your output should match the given output sample.*


```dart

class Student {
  double GPA;
  int age;
  String name;
  Student({required this.name, required this.age, required this.GPA});
}

void printUs(List<Student> students) {
  print("Sorted increasing by age:");
  // Print names sorted by age (increasing, ie. ascending)

  print("\n. Sorted decreasing by GPA:");
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

Sorted increasing by age:
Rawan
MoSalah
Ashraf
Mariam
Anas

Sorted decreasing by GPA:
Mariam
Rawan
Ashraf
MoSalah
Anas
```