import 'dart:io';

void studentGrades(int grade) {
  if (grade < 60)
    print("E");
  else if (grade >= 60 && grade < 70)
    print("D");
  else if (grade >= 70 && grade < 80)
    print("C");
  else if (grade >= 80 && grade < 90)
    print("B");
  else
    print("A");
}

void main() {
  print("Enter the student's grades");
  int grade = int.parse(stdin.readLineSync()!);
  studentGrades(grade);
}
