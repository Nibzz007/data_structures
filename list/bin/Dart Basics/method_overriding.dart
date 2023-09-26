class Human {
  //Overridden method
  void run() {
    int a = 10;
    int b = 20;
    int c = a + b;
    print('$c');
  }
}

class Man extends Human {
  //Overriding method
  @override
  void run() {
    super.run();
    print("Boy is running");
  }
  // void c() {
  //     super.run();
  //   }
}

void main() {
  Man m = Man();
  //This will call the child class version of run()
  m.run();
  print(A.a);
  print(A.dis());
}

class A{
  static int a = 10;

  static int dis() {
    int b = 10;
    int c = a + b;
    return c;
  }
}
