void main() {
  List<int> array = [1, 5, 3, 8, 16, 23];
  var sum = 0;
  //int flag = 0;

  for (int i = 0; i < array.length; i++) {
    if (array[i] % 2 == 0) {
      //flag = 1;
      sum = sum + array[i];
    }
  }
  
    print(sum);
  
}
