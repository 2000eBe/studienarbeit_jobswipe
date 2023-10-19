import 'package:flutter/material.dart';
import 'package:studienarbeit/pages/second_page.dart';

// ignore_for_file: prefer_const_constructors
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('TestTest'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          // Bild
          Expanded(child: Container(
            padding: EdgeInsets.all(30.0),
            child:  Image.asset('images/JobSwipeLogo.png'),
          )),

          // Textfeld
          Expanded(child: Container(
            padding: EdgeInsets.all(50.0),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.black,
                ))),
            child: Text('In nur einem Swipe zum Traumjob!'
                    'JobSwipe bietet dir eine unkomplizierte Möglichkeit mit Arbeitgebern und Bewerbern in Kontakt zu Treten!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                  ),),),),

          // Buttons
          Expanded(child: OverflowBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [

              ElevatedButton(onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)
                    )
                  ),
                  child: Text(
                  'Einloggen',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ))),
              ElevatedButton( onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)
                      )
                  ),
                  child: Text('Registrieren',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ))
                  )

            ],

          ))

        ],
      ),
    );
  }
}

/*
  child: ElevatedButton(
            child: Text("Go to second Page"),
            onPressed: () {
              // navigate to second page
              Navigator.pushNamed(context, '/personalBio');
            },
          )

 */