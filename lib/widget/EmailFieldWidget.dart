import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors

class EmailFieldWidget extends StatefulWidget {
  final TextEditingController controller;

  const EmailFieldWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  _EmailFieldWidgetState createState() => _EmailFieldWidgetState();
}

class _EmailFieldWidgetState extends State<EmailFieldWidget> {
  @override
  void initState() {
    super.initState();

    widget.controller.addListener(onListen);
  }

  @override
  void dispose() {
    widget.controller.removeListener(onListen);

    super.dispose();
  }

  void onListen() => setState(() {});

  @override
  Widget build(BuildContext context) => TextFormField(
    controller: widget.controller,
    decoration: InputDecoration(
      hintText: 'Email',
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),


      ),
      prefixIcon: Icon(Icons.mail,
      color: Colors.red,),
      suffixIcon: widget.controller.text.isEmpty
          ? Container(width: 0)
          : IconButton(
        icon: Icon(Icons.close,
        color: Colors.red,),
        onPressed: () => widget.controller.clear(),
      ),
    ),
    keyboardType: TextInputType.emailAddress,
    autofillHints: [AutofillHints.email],
    validator: (email) => email != null && !EmailValidator.validate(email)
        ? 'Enter a valid email'
        : null,
  );
}