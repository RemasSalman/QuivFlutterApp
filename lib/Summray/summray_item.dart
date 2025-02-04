import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p2/Summray/summray_identifier.dart';

class SummrayItem extends StatelessWidget {
  const SummrayItem(this.item, {super.key});

  final Map<String, Object> item;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = item['user_answer'] == item['correct_answer'];

    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SummrayIdentifier(
        isCorrectAnswer,
        item['qustion_index'] as int,
      ),
      SizedBox(
        width: 20,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item['qustion'] as String,
              style: GoogleFonts.abel(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(item['user_answer'] as String,
                style: TextStyle(
                  color: Color.fromARGB(255, 250, 133, 241),
                )),
            Text(item['correct_answer'] as String,
                style: TextStyle(color: Color.fromARGB(255, 150, 198, 241))),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    ]);
  }
}
