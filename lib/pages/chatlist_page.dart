import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class ChatListPage extends StatelessWidget {
  ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Aktuelle Kontakte",
          style: TextStyle(color: Colors.red),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,

              ),
              onPressed: () {

              })
        ],



      ),
    );
  }
}
