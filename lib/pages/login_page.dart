import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}


  // M E T H O D S



  // U I

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        title: Image.asset('images/JobSwipeLogo.png',
          width: 120,
        ),
        titleSpacing: 10,
        elevation: 5,
        backgroundColor: Colors.white,
      ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget> [

              // Logo displayed on top
              Padding(padding: EdgeInsets.only(top: 60.0,),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 150,
                    child: Image.asset('images/JobSwipeLogo.png'),),),),

              // E-Mail Textfield
              Padding(padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Email einfügen, z.B. abc@gmail.com'),),),

              // Password Textfield
              Padding(padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Passwort',
                  hintText: 'Wählen Sie ein sicheres Passwort'),),),

              // B U T T O N S

              TextButton(onPressed: () {
                // TODO FORGOT PASSWORD SCREEN
              }, 
                  child: Text('Passwort vergessen',style: TextStyle(color: Colors.red, fontSize: 15),),),
              Container(
                  height: 50,
                  width: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20)),
                  child: TextButton(onPressed: () {
                    // TODO NAVIGATE TO MAINPAGE
                  }, child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 25),)),),
              
              SizedBox(
                height: 130,
              ),
              TextButton(onPressed: () {
                Navigator.pushNamed(context, '/secondpage');
              }, child: Text('Neuer User? Account erstellen', style: TextStyle(color: Colors.black),
              ))
            ],
          ),
        )
        

    );
  }
}
