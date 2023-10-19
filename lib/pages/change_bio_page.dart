import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors

class PersonalBio extends StatefulWidget {
  const PersonalBio({super.key});

  @override
  State<PersonalBio> createState() => _PersonalBioState();
}

class _PersonalBioState extends State<PersonalBio> {
  @override


  TextEditingController myController = TextEditingController();


  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [


          // Upper Picture of Person

          Expanded(
            child: Container(
              color: Colors.lightGreenAccent,
            ),),

          // Biography
          Expanded(
              child: TextField(
                controller: myController,
              )),
          // Pictures
          Expanded(
              child: Container(
                color: Colors.purple,
              )),

          // Region
          Expanded(
              child: Container(
                color: Colors.yellow,
              )),
          // Interests
          Expanded(
              child: Container(
                color: Colors.pinkAccent,
              )),

        ],


      ),
    );
  }
}
