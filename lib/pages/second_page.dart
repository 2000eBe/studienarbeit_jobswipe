import 'package:flutter/material.dart';
import 'package:studienarbeit/pages/first_page.dart';

// ignore_for_file: prefer_const_constructors
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Hallo hier ist Seite2"),
      ),

      body: Center(
          child: ElevatedButton(
              child: Text("Go To First Page"),
              onPressed: () {
                Navigator.pushNamed(context, '/firstpage');
              })

      ),

    );
  }
}
