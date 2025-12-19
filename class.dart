import 'dart:io';

// Create 2 classes. one is Student and another one is Mobile. Fields and
// functions are of your choice. Minimum 2 object of each class in main function
// with different data which is given by using constructor.

class Student {
  String name;
  int age;
  String course;

  Student(this.name, this.age, this.course);

  void function() {
    print("Student: $name");
    print("age: $age");
    print("course: $course");
  }
}

class Mobile {
  String brand;
  String model;
  int price;

  Mobile(this.brand, this.model, this.price);

  void function() {
    print("Brand: $brand");
    print("Model: $model");
    print("Price: $price");
  }
}

void main() {
  Student student1 = Student("mahroof", 15, "Techno Kids");
  Student student2 = Student("Khubaib", 20, "Flutter");

  student1.function();

  student2.function();

  Mobile mobile1 = Mobile("Samsung", "Galaxy C5", 32000);
  Mobile mobile2 = Mobile("Motorolla", "One 5g uw", 82000);

  mobile1.function();
  mobile2.function();
}
