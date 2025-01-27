// has topic of collections

void main() {
  var list = [1, 2, 3];
  var empList = List<int>.empty(growable: false);
  print(list);

  // print(list.first);
  // print(empList.first); // Bad state: No element
  // print(empList.firstOrNull);
}
