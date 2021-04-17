import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/Question.dart';

class TriviaScreen extends StatefulWidget {
  @override
  _TriviaScreenState createState() => _TriviaScreenState();
}

class _TriviaScreenState extends State<TriviaScreen> {

  int answer = 0;
  List<Question> questionList = Question.getQuestionList();

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
                  questionList[0].question,
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
                      title: Text(questionList[0].option1),
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
                      title: Text(questionList[0].option2),
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
                      title: Text(questionList[0].option3),
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
                      value: 4,
                      title: Text(questionList[0].option4),
                    )
                  ),
                ],
              )
          ),
          Container(
            height: 87,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.30),
                    spreadRadius: 2,
                    blurRadius:3,
                    offset: Offset(0,-1)
                ),
              ]
          ),
            child: Center(
                child: FlatButton(
                  height: 39,
                  onPressed: (){},
                  child: Text(
                    'Responder',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  color: Color(0xffDA0175),
                  textColor: Color(0xffF7F7F7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
                )
            )
          ),
        ],
      ),
    );
  }
}
