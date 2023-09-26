void main(List<String> args) {
  List<int> list = [1, 4, 3, 7, 3, 7, 11, 2, 11,7,11,3,3,3];

  for (int i = 0; i < list.length; i++) {
    int flag = 0;
    for (int j = i + 1; j < list.length; j++) {
      if (list[i] == list[j]) {
        flag = 1;
        list[j] = -1;
      }
    }
    if (flag == 1 && list[i] != -1) {
      print(list[i]);
    }
  }
}
