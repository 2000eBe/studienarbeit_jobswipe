import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:studienarbeit/pages/first_page.dart';
import 'package:email_validator/email_validator.dart';
import 'package:studienarbeit/widget/EmailFieldWidget.dart';
import 'package:studienarbeit/widget/password_field_widget.dart';

// ignore_for_file: prefer_const_constructors
class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose(){
      emailController.dispose();
      passwordController.dispose();
      super.dispose();
  }

  // Widget UI
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
              child: Text('Registrieren Sie sich mit Ihrer E-Mail und einem sicheren Passwort',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),))),

            // T E X T F I E L D    F O R     U S E R

            Expanded(
                child: Form(
                  key: formKey,
                  child: Container(
                   padding: EdgeInsets.all(16),
                      child: AutofillGroup(
                        child: Column(
                        children: [
                          EmailFieldWidget(controller: emailController),
                          const SizedBox(height: 16),
                          PasswordFieldWidget(controller: passwordController),
                          const SizedBox(height: 16),


                ], )),))),

            // N E X T S T E P   B U T T O N
            Expanded(child: OverflowBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {
                  final form = formKey.currentState!;

                  if(form.validate()){
                    TextInput.finishAutofillContext();
                    final email = emailController.text;

                    ScaffoldMessenger.of(context)
                      ..removeCurrentSnackBar()
                      ..showSnackBar(SnackBar(
                        content: Text('Ihre Email ist $email'),
                      ));
                    Navigator.pushNamed(context, '/registerPassword');
                  }

                },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)
                      )
                  ),
                  child: Text(
                      'Registrieren',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      )))],
            ),)


          ],


      ),

    );


  }
}
