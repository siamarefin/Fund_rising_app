import 'package:flutter/material.dart';
import 'package:fund_bd/home_screen.dart';
import 'package:fund_bd/sign_in.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: SignIn(),
    );
  }
}
