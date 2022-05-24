void main() {
  Cat cat = Cat();
  cat.voice();
  Dog dog = Dog ();
  dog.voice();
}

abstract class Animal {
  String? animalName;
  int? animalAge;

  // abstact function / incomplete function
  voice();

  eating(){
    print("Animals Eat");
  }
}

class Cat extends Animal{
  // Complete function
  @override
  voice(){
    print("Meow");
  }
}


class Dog extends Animal {
  @override
  voice() {
    print("Barking");
  }
}

