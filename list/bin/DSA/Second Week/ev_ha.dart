void main() {
  var evenNumbers = <int, int>{};
  for (var i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      evenNumbers[i] = i;
    }
  }
  print(evenNumbers);
}
