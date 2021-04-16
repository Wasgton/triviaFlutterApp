import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TriviaScreen extends StatefulWidget {
  @override
  _TriviaScreenState createState() => _TriviaScreenState();
}

class _TriviaScreenState extends State<TriviaScreen> {

  int answer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Image.asset(
            'lib/assets/images/logo_branca.png'
            ,height:27
          ),
          backgroundColor: Color(0xff374952),
          centerTitle:true,
      ),
      body: Column(
        children:[
          Container(
            margin: EdgeInsets.fromLTRB(32, 56, 32, 10),
            // color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PERGUNTA 1',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Lorem ipsum dolor sit?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.30),
                          spreadRadius: 2,
                          blurRadius:3,
                          offset: Offset(1,3)
                        ),
                      ]
                    ),
                    child: RadioListTile(
                      groupValue: answer,
                      onChanged: (value) {
                        setState(() {
                          answer = value;
                        });
                      },
                      value: 1,
                      title: Text('Teste 1'),
                    )
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.30),
                          spreadRadius: 2,
                          blurRadius:3,
                          offset: Offset(1,3)
                        ),
                      ]
                    ),
                    child: RadioListTile(
                      groupValue: answer,
                      onChanged: (value) {
                        setState(() {
                          answer = value;
                        });
                      },
                      value: 2,
                      title: Text('Teste 2'),
                    )
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.30),
                          spreadRadius: 2,
                          blurRadius:3,
                          offset: Offset(1,3)
                        ),
                      ]
                    ),
                    child: RadioListTile(
                      groupValue: answer,
                      onChanged: (value) {
                        setState(() {
                          answer = value;
                        });
                      },
                      value: 3,
                      title: Text('Teste 3'),
                    )
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}
