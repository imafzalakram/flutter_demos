void main() {
  Printer<BluePrinter> obj = Printer<BluePrinter> (BluePrinter());
}

// Generics Class
class Printer<T extends PrintAllColors  > {

  //Generic Constructor
  Printer(T t){
    print(t);
  }
}

class PrintAllColors {

}

class BluePrinter  extends PrintAllColors{

  BluePrinter(){
    print("This is a BluePrinter class");
  }
}

class GrayPrinter extends PrintAllColors{
  GrayPrinter(){
    print("This is a GrayPrinter class");
  }
}

class RedPrinter extends PrintAllColors{
  RedPrinter(){
    print("This is a BluePrinter class");
  }
}