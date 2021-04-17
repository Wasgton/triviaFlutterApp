class Question {

  String question, option1, option2, option3, option4;
  int answer;

  Question(
    this.question,
    this.option1,
    this.option2,
    this.option3,
    this.option4,
    this.answer,
  );

  static List<Question> getQuestionList(){
    List<Question> questions = [];

    questions.add(
        Question(
            'O que é o flutter?',
            'Uma serviço do google',
            'Um framework',
            'Um novo SO',
            'Um novo smartphone',
            2
        )
    );

    return questions;

  }

}