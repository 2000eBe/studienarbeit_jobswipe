import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore_for_file: prefer_const_constructors
class PasswordFieldWidget extends StatefulWidget {
  final TextEditingController controller;

  const PasswordFieldWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  _PasswordFieldWidgetState createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  bool isHidden = false;

  @override
  Widget build(BuildContext context) => TextFormField(
    controller: widget.controller,
    obscureText: isHidden,
    decoration: InputDecoration(
      hintText: 'Passwort',
      border: OutlineInputBorder(
      ),
      prefixIcon: Icon(Icons.lock, color: Colors.red,),
      suffixIcon: IconButton(
        icon:
        isHidden ? Icon(Icons.visibility_off,color: Colors.red,) : Icon(Icons.visibility,color: Colors.red,),
        onPressed: togglePasswordVisibility,
      ),
    ),
    keyboardType: TextInputType.visiblePassword,
    autofillHints: const [AutofillHints.password],
    onEditingComplete: () => TextInput.finishAutofillContext(),
    validator: (password) => password != null && password.length < 5
        ? 'Passwort muss mindestens fünf Symbole lang beinhalten'
        : null,
  );

  void togglePasswordVisibility() => setState(() => isHidden = !isHidden);
}