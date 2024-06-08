import 'dart:io';

void main() {
  Q1();
  Q2();
  Q3();
  Q4();
  Q5();
  Q6();
  Q7();
  Q8();
  Q9();
  Q10();
}

// Q.1: Create two integer variables length and breadth and assign values then
// check if they are square values or rectangle values.
// ie: if both values are equal then it's square otherwise rectangle.

void Q1() {
  int L = 11;
  int b = 12;

  if (L == b) {
    print("your value is Square ");
  } else {
    print("your value is Rectangle");
  }
}

// Q.2: Take two variables and store age then using if/else condition to determine
// oldest and youngest among them.

void Q2() {
  var age1 = 50;
  var age2 = 40;

  if (age1 > age2) {
    print("Your age1 is older than age2");
  } else {
    print("Your age1 is younger than age2");
  }
}

// Q.3: A student will not be allowed to sit in exam if his/her attendance is less
// than 75%. Create integer variables and assign value:
// Number of classes held = 16,
// Number of classes attended = 10,
// and print percentage of class attended.
// Is student is allowed to sit in exam or not?

void Q3() {
  int CH = 16;
  int CA = 10;

  double percentage = CA / CH * 100;

  if (percentage < 75) {
    print(
        "you are not allowed for enter in exam because your percentage is $percentage% less than 75%");
  } else {
    print(
        "you are allowed for enter in exam because your percentage is $percentage% greater or equal to 75%");
  }
}

// Q4: Write a program to convert Celsius to Fahrenheit .
// i.e: Temperature in degrees Fahrenheit (°F) = (Temperature in degrees Celsius
// (°C) * 9/5) + 32

void Q4() {
  int C = 40;
  var F = (C * 9 / 5) + 32;

  print("Your Celsius $C° temp is $F fehrenheit temp");
}

// Q.5 Write a program to read temperature in centigrade and display a suitable
// message according to temperature:
// You have num variable temperature = 42;
// Now print the message according to temperature:
// temp < 0 then Freezing weather
// temp 0-10 then Very Cold weather
// temp 10-20 then Cold weather
// temp 20-30 then Normal in Temp
// temp 30-40 then Its Hot
// temp >=40 then Its Very Hot

void Q5() {
  num tempInC = 42;

  if (tempInC < 0) {
    print("Outside temperature $tempInC°C is Freezing weather");
  } else if (tempInC >= 0 && tempInC <= 10) {
    print("Outside temperature $tempInC°C is very cold weather");
  } else if (tempInC > 10 && tempInC <= 20) {
    print("Outside temperature $tempInC°C is cold weather");
  } else if (tempInC > 20 && tempInC <= 30) {
    print("Outside temperature $tempInC°C is Normal weather");
  } else if (tempInC > 30 && tempInC <= 40) {
    print("Outside temperature $tempInC°C is hot weather");
  } else {
    print("Outside temperature $tempInC°C is very hot weather");
  }
}

// Q.6: Write a program to check whether an alphabet is a vowel or consonant.

void Q6() {
  var a = "e";
  if (a == "aeiouAEIOU") {
    print('Your alphabet is a vowel');
  } else {
    print('Your alphabet is a consonant');
  }
}

// Q7: Write a program to calculate root of any number.
// i.e: √y = y1⁄2

void Q7() {
  num a = 6;
  num b = a / 2;
  print("your $a root is $b");
}

// Q8: Create a marksheet using operators of at least 5 subjects and output
// should have Student Name, Student Roll Number, Class, Percentage, Grade
// Obtained etc.
// i.e: Percentage should be rounded upto 2 decimal places only.

void Q8() {
  var stdName = "Muhammad Khubaib";
  var stdRollNumber = "11223";
  var stdClass = "Flutter";
  var examTotalMarks = 500;
  List<int> subMarks = [53, 23, 94, 67, 17];

  var totalMarks = subMarks.reduce((a, b) => (a + b));

  var percentage = (totalMarks / examTotalMarks * 100);
  var conPercentage = percentage.toInt();

  var grade;

  if (conPercentage >= 90 && conPercentage <= 100) {
    grade = ("A++");
  } else if (conPercentage >= 80 && conPercentage < 90) {
    grade = ("A1");
  } else if (conPercentage >= 70 && conPercentage < 80) {
    grade = ("A");
  } else if (conPercentage >= 60 && conPercentage < 70) {
    grade = ("B");
  } else if (conPercentage >= 50 && conPercentage < 60) {
    grade = ("C");
  } else if (conPercentage >= 40 && conPercentage < 50) {
    grade = ("D");
  } else if (conPercentage >= 33 && conPercentage < 40) {
    grade = ("E");
  } else if (conPercentage >= 0) {
    grade = ("your Failed");
  } else {
    grade = ("invalid percentage");
  }

  List<String> marksheet = [
    "Student-Name:$stdName",
    "Student-RollNumber:$stdRollNumber",
    "Student-Class:$stdClass",
    "Total-Marks:$examTotalMarks",
    "Obtained-Marks:$totalMarks",
    "Percentage:$conPercentage",
    "Grade:$grade"
  ];
  print(marksheet);
}

// Q9: Check if the number is even or odd, If number is even then check if this is
// divisible by 5 or not & if number is odd then check if this is divisible by 7 or not.

void Q9() {
  num a = 8;

  if (a % 2 == 0) {
    if (a % 5 == 0) {
      print("Your number is even and divisible by 5");
    } else {
      print("Your number is even but not divisible by 5");
    }
  } else {
    if (a % 7 == 0) {
      print("Your number is odd and divisible by 7");
    } else {
      print("Your number is odd but not divisible by 7");
    }
  }
}

// Q10: Write a program that takes three numbers from the user and prints the
// greatest number & lowest number.

void Q10() {
  int readint() {
    return int.parse(stdin.readLineSync()!);
  }

  int a = readint();
  int b = readint();
  int c = readint();

  var largest = a;
  var smallest = a;

  if (b > a) {
    largest = b;
  } else {
    largest = c;
  }

  if (b < a) {
    smallest = b;
  } else {
    smallest = c;
  }

  print("your largest value is $largest");
  print("your smallest value is $smallest");
}
