class Bird {
  void fly() {
    print("The bird can fly");
  }
}

// Inherits the super class
class Parrot extends Bird {
  @override
  void fly() {
    print("The parrot can speak");
  }
  void r() {
    super.fly();
  }
}

// Inherits the Parror base class
class Eagle extends Parrot {
  @override
  void fly() {
    print("The eagle has a sharp vision");
  }

  void c() {
    super.r();
  }
}

void main() {
  // Creating object of the child class
  Eagle e = Eagle();
  
  e.r();
  
}
