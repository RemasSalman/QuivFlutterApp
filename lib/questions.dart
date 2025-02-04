import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p2/answer_button.dart';
import 'package:p2/models/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.choosen, {super.key});
  final void Function(String answer) choosen;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void increment(String selectedAnswer) {
    widget.choosen(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.abel(
                color: const Color.fromARGB(255, 204, 147, 248),
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ...currentQuestion.getshuffledAnswers().map((answer) {
              return AnswersButton(answer, (){
                increment(answer);
              });
            })
            
          ],
        ),
      ),
    );
  }
}
