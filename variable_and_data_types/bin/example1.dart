import 'dart:async';

void main(List<String> args) {
  const String myName = 'Samir';
  print('Name: $myName');

  const int myAge = 23;
  print(myAge);

  const double myGpa = 3.11;
  print(myGpa);

  const bool isCompletedBachelors = true;
  print(!isCompletedBachelors);

  const List<bool> samir = [true, true, false];
  print(samir);

  const Map<String, int> mapInDart = {'key': 20};
  print(mapInDart["key"]);

  const Set<int> setInDart = {1, 2, 3};
  print(setInDart);

  const dynamic nullInDart = null;
  print(nullInDart);
}
