import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p2/models/questions.dart';
import 'package:p2/Summray/summray.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.onRestart, this.chooseAnswers, {super.key});

  final List<String> chooseAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummray() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chooseAnswers.length; i++) {
      summary.add(
        {
          'qustion_index': i,
          'qustion': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chooseAnswers[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summraydata = getSummray();
    final numtotalQ = questions.length;
    final numtotalA = summraydata.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You Answered $numtotalA out of $numtotalQ Questions Correctly',
              style: GoogleFonts.abel(
                  color: Color.fromARGB(255, 252, 175, 246),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            QuestionsSummary(summraydata),
            SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: Icon(Icons.refresh),
              label: Text(
                'Restart Quiz!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
