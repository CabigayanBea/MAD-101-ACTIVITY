//commenting code
/*
commenting*/
 
/*arrow syntax 
void main() => runApp(MyProject());

or
void main(){
runApp (MyProject());
}*/

//DECLARING VARIABLES
// Declared without specifying the type - Infers type
var filter = 'camera';
 
// Declared by type
//String name = 'Bea';
 
// Uninitialized variable has an initial value of null
//String middlename;
 
// Value will not change final filter = 'company';
 
// or
final String  = 'company';
 
//NUMBERS
double price = 19.99;
var temperature = 36.6; 


/*STRING
String name = "Alice";
String greeting = "Hello, $name!";

int age = 25;
String introduction = "I am $age years old.";

String calculation = "The sum of 2 + 3 is ${2 + 3}.";*/

//BOOLEAN
bool isLoggedIn = true;
bool hasPermission = false;

//LIST
var colors = ['red', 'green', 'blue']; 
var scores = [10, 20, 30];             

//MAPS
/*Map<String, int> scores = {'Alice': 90, 'Bob': 85};
var colors = {'red': '#FF0000', 'green': '#00FF00'};

//RUNES
var heart = Runes('\u2665');
print(String.fromCharCodes(heart)); // Output: ♥

var smiley = Runes('\u{1F600}');
print(String.fromCharCodes(smiley)); // Output: 😀


//OPERATORS
/*Operator	Description	  Example
+          	Addition	  3 + 2 → 5
-	        Subtraction	  3 - 2 → 1
*	      Multiplication	3 * 2 → 6
/	         Division	    5 / 2 → 2.5
~/	   Integer Division	5 ~/ 2 → 2
%    	     Modulus 	    5 % 2 → 1

Relational (Comparison) Operators

Operator	Description	             Example
==	        Equal to	          5 == 2 → false
!=	      Not equal to	        5 != 2 → true
>	       Greater than	          5 > 2 → true
<	         Less than	          5 < 2 → false
>=	 Greater than or equal to	  5 >= 2 → true
<=	Less than or equal to	      5 <= 2 → false

 Logical Operators

Operator	Description	            Example
&&	      Logical AND	           true && false → false
`		                               `
!	    Logical NOT (negation)     true → false


Assignment Operators

Operator	Description	        Example
=	         Assign	             a = 5
+=	  Add and assign	         a += 2 → a = a + 2
-=	  Subtract and assign	     a -= 2 → a = a - 2
*=	  Multiply and assign	     a *= 2 → a = a * 2
/=	   Divide and assign	     a /= 2 → a = a / 2
~/=	Integer divide and assign	 a ~/= 2 → a = a ~/ 2
%=	Modulus and assign	       a %= 2 → a = a % 2

//ELSE AND IF
@override
Widget build(BuildContext context) {
  bool isLoggedIn = false;

  return Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isLoggedIn ? Text('Welcome back!') : Text('Please log in.'),
          ElevatedButton(
            onPressed: () {},
            child: Text(isLoggedIn ? 'Logout' : 'Login'),
          ),
        ],
      ),
    ),
  );
}

//FOR LOOPS
for (int i = 0; i < 5; i++) {
  print('Iteration $i');
}

//WHILE DO-WHILE

int count = 0;

while (count < 5) {
  print('Count: $count');
  count++;
}
// Output: Count: 0, Count: 1, ..., Count: 4

//WHLE AND BREAK

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('While and Break Example')),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int count = 0;
    List<Widget> widgetList = [];

    while (count < 5) {
      widgetList.add(Text('Item $count'));
      count++;

      if (count == 3) {
        break;  // Exit the loop when count reaches 3
      }
    }

    return Column(
      children: widgetList,
    );
  }
}

//CONTINUE
void main() {
  for (int i = 0; i < 5; i++) {
    if (i == 2) {
      continue; // Skip the current iteration when i is 2
    }
    print(i); // Will print 0, 1, 3, 4
  }
}
 //output
0
1
3
4

// SWITCH AND CASE
void main() {
  int day = 3;

  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day");
  }
}
//output 
Wednesday

//FUCTION

int addNumbers(int a, int b) {
  return a + b;
}

void main() {
  int result = addNumbers(5, 7); // Calling the function
  print("The sum is: $result");  // Output: The sum is: 12
}
*/
*/

//IMPORT PAKAGE
/*import 'package:http/http.dart' as http;

void main() async {
  var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  if (response.statusCode == 200) {
    print('Response body: ${response.body}');
  } else {
    print('Failed to load data');
  }
}
*/

//CLASS
/*class ClassName { }
type propertyName;

  ClassName(this.propertyName);

  void someMethod() {
    print("Hello from $propertyName!");
  }
}
*/
//CLASS INHERITANCE
/*class Animal {
  String name;

  // Constructor
  Animal(this.name);

  // Method
  void speak() {
    print("$name makes a sound.");
  }
}
*/

//IMPLEMENTING ASYNCHRONOUS PROGRAMMING
/*import 'dart:async';

void main() {
  print('Start of main');
  
  fetchData();  // Asynchronous task

  print('End of main');
}

// Simulate an asynchronous task
Future<void> fetchData() async {
  print('Fetching data...');
  
  // Simulating a network call with a delay of 3 seconds
  await Future.delayed(Duration(seconds: 3));
  
  print('Data fetched!');
}*/



