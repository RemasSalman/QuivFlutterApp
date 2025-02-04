import 'package:flutter/material.dart';

class SummrayIdentifier extends StatelessWidget {
  const SummrayIdentifier(this.isCorrect, this.questionIndex, {super.key});

  final int questionIndex;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    final num = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrect
            ? Color.fromARGB(255, 150, 198, 241)
            : Color.fromARGB(255, 250, 133, 241),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        num.toString(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56),
        ),
      ),
    );
  }
}
