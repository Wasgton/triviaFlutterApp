import 'package:flutter/material.dart';

class TriviaScreen extends StatefulWidget {
  @override
  _TriviaScreenState createState() => _TriviaScreenState();
}

class _TriviaScreenState extends State<TriviaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset(
            'lib/assets/images/logo_branca.png'
            ,height:48
          ),
          backgroundColor: Color(0xff374952),
          centerTitle:true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(),
          ]
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          // color: Colors.red,
            boxShadow:[
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: Offset(0, 1)
              )
            ]
        ),
        padding: EdgeInsets.fromLTRB(0, 24, 0, 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> TriviaScreen())
                );
              },
              child: Text(
                'Responder'
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
