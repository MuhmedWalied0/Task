import 'dart:math';
import 'dart:io';

Random random = Random();

String get symbol {
  String symbol = String.fromCharCode(random.nextInt(4) + 35);
  return symbol;
}

String get uppercase {
  var uppercase = String.fromCharCode(random.nextInt(26) + 65);
  return uppercase;
}

String get lowercase {
  String lowercase = String.fromCharCode(random.nextInt(26) + 97);
  return lowercase;
}

String changePasswordPattern(String input) {
  List<String> characters = input.split("");
  characters.shuffle();
  return characters.join();
}

void main() {
  print("Write How long do you want the password will be");

  int lenth = int.tryParse(stdin.readLineSync()!)??0;
  int r = lenth ~/ 8;
  if (r != 0) {
    String password = "";
    for (var i = r; i > 0; i--) {
      password += "${uppercase}${lowercase}${symbol}";
    }
    for (var i = 0; i < lenth - (3 * r); i++) {
      int numbers = random.nextInt(9);
      password += "$numbers";
    }
    password = changePasswordPattern(password);
    print(password);
  } else print("Check your input Knowing that the number you must enter is at least 8");
}
