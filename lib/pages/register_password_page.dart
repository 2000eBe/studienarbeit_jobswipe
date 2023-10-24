import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
class RegisterPasswordPage extends StatefulWidget {
  const RegisterPasswordPage({super.key});

  @override
  State<RegisterPasswordPage> createState() => _RegisterPasswordPageState();
}


class _RegisterPasswordPageState extends State<RegisterPasswordPage> {
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

        body: Column(
            children: [
        // T E X T    I N S T R U C T I O N

        Expanded(child: Container(
        padding: EdgeInsets.all(50.0),
        child: Text('Wählen Sie ein Passwort',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),))),

              // P A S S W O R D  T E X T F I E L D
              Expanded(child: TextFormField(

                    )


              ),

              // N E X T S T E P   B U T T O N
              Expanded(child: OverflowBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {
                  },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)
                          )
                      ),
                      child: Text(
                          'Nächster Schritt',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          )))],
              ),)


            ],


        )
    );}
}
