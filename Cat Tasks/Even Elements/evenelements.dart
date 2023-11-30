void main() {
  List a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List result = [];
  a.forEach((element) {
    if (element % 2 == 0) result.add(element);
  });
  print(result);
}
