import 'package:flutter/material.dart';
import 'package:studienarbeit/pages/second_page.dart';

// ignore_for_file: prefer_const_constructors
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          // J O B S W I P E L O G O
          Expanded(child: Container(
            padding: EdgeInsets.all(30.0),
            child:  Image.asset('images/JobSwipeLogo.png'),
          )),

          // I N T R O D U C T I O N T E X T
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

          // B U T T O N  A R E A
          Expanded(child: OverflowBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              // L O G I N  B U T T O N
              ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, '/loginpage' );
              },
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

              // R E G I S T E R B U T T O N

              ElevatedButton( onPressed: () {
                Navigator.pushNamed(context, '/secondpage');
              },
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
