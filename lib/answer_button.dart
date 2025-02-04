
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswersButton extends StatelessWidget {
  const AnswersButton(this.answerText, this.onTap, {super.key});

  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 28, 1, 49),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          )),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
        style: GoogleFonts.abel(
          fontSize: 18,
          fontWeight: FontWeight.w200,
        ),
      ),
    );
 }
}
