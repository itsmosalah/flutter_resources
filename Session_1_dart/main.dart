void main() {
  int x = 5;
  double y = 5.2;
  num z = 3.2;
  bool isValid = false;

  String name = "Mohamed";

  //similar to an ArrayList or vector
  List<int> lst = [1, 2, 3];

  //stores unique values
  Set<int> st = {2, 3, 4}; // or {}
  st.add(3); // no change to set

  //stores key-value pairs
  Map<String, int> ageOf = {"Mohamed": 20, "John Doe": 25}; // or {}

  ageOf["Mohamed"] = 21;

  const list1 = [1, 2, 3];
  List<int> list2 = const [1, 2, 3];
}
