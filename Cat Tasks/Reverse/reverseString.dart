import 'dart:io';

String reverseString(String Text) {
  String reverse = String.fromCharCodes(Text.codeUnits.reversed);
  return reverse;
}

void main() {
  print("Enter your frist name");
  String fristName = stdin.readLineSync()!;
  String fristNameReverse = reverseString(fristName);
  print("Enter your Last name");
  String lastName = stdin.readLineSync()!;
  String lastNameReverse = reverseString(lastName);
  print("${fristNameReverse} ${lastNameReverse}");
}
