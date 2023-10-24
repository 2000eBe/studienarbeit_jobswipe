/*  Programming Fundamentals

  C O M P A R I S O N    O P E R A T O R S

  5 == 5 --> true, Equal to
  2 != 3 --> true, not equal to
  3 > 2 --> true, Greater than
  3 < 2 --> false, less than
  5 >= 5 --> true, greater or equal to
  3 <= 7 --> true, less or equal to

  _______________________________________________________________________

  L O G I C A L    O P E R A T O R S

  AND operator, return true if both sides are true
  isBeginner && ( age < 18 ) --> return true

  OR operator, return true if one or both sides are true
  isBeginner || ( age < 18 ) --> return true

  NOT operator, returns the opposite value
  !isBeginner --> return false

  _______________________________________________________________________

  C O N T R O L F L O W

  if(condition) {
    do something
  }


  if (condition) {
   do something
  } else {
   do something else
  }


  if (condition) {
   do something
  } else if (condition2) {
   do something else
  }

  Switch case

    switch(condition) {
    case "X":
      do something;
      break;
    case "Y":
      do something else;
      break;

    default:
      do something else again, when non of the cases above are met

  _______________________________________________________________________
  L O O P S

    if you know how many times you need to loop, use a for loop
    if you don't know how many times you need to loop, use while loop

    for loop

    for ( initialization; condition; iteration ) {
      do something
      ++iteration or --decrement it
    }

    while loop
    while (condition) {
      do something
    }

  _______________________________________________________________________

 F U N C T I O N S / M E T H O D S

  Organise blocks of code into functions, so you can reuse them easily

  'void' means, that the function returns nothing

  _______________________________________________________________________

 D A T A S T R U C T U R E S

  List is an ordered collection of elements and can have duplicates

  List num = [1, 2, 3];
  // num[0] --> 1;
  // num[1] --> 2;

  Set is unordered collection of unique elements (no duplicates)
  Set<String> uniqueNames = {"Mitch", "Sharon", "Vince"};

  Map stores key-value pairs (most likely to be used in app developement)
  Map user = {
    'name': "Mitch Koko",
    'age': 27,
    'height': 180,
  };

  Code to retrieve map elements
  for example
  print(user['age']); will print 27
*/

// ignore_for_file: prefer_const_constructors
// This will prevent the IDE from demanding const everywhere

import 'package:flutter/material.dart';
import 'package:studienarbeit/pages/change_bio_page.dart';
import 'package:studienarbeit/pages/first_page.dart';
import 'package:studienarbeit/pages/login_page.dart';
import 'package:studienarbeit/pages/register_password_page.dart';
import 'package:studienarbeit/pages/second_page.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // function for Gesture Detector
    void userTapped(){
      print("User Tapped");
    }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
     routes: {
        '/firstpage'  : (context) => FirstPage(),
        '/secondpage' : (context) => SecondPage(),
        '/personalBio': (context) => PersonalBio(),
        '/loginpage'  : (context) => LoginPage(),
       '/registerPassword'  : (context) => RegisterPasswordPage(),

     },

     /* home: Scaffold(
        backgroundColor: Colors.white70,
        body: Center(
            child: GestureDetector(
              onTap: userTapped, //see functions above
              child: Container(
                height: 200,
                width: 200,
                color: Colors.lightGreenAccent[200],
                child: Center(child: Text("Tap me")),
              ),
            ),
          )

          )
*/
        );


  }
}
