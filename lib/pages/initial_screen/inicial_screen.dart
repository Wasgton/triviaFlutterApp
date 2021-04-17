import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../trivia_screen/trivia_screen.dart';

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Expanded(
        // margin: EdgeInsets.fromLTRB(0, 167, 0, 88),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('lib/assets/images/logo.png'),
            Text('Trivia\nacademy',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                height: 1.2,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.normal,
              ),
            ),
            FlatButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> TriviaScreen())
                );
              },
              child: Text(
                'Começar'
                ,style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                ),
              ),
              color: Color(0xffDA0175),
              textColor: Color(0xffF7F7F7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
            ),
          ],
        ),
      ),
    );
  }
}