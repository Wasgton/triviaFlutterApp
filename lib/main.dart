import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/initial_screen/inicial_screen.dart';

void main(){
  runApp(Trivia());
}

class Trivia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InitialScreen()
    );
  }
}