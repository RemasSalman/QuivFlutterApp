import 'package:flutter/material.dart';
import 'package:p2/Summray/summray_item.dart';

class QuestionsSummary extends StatelessWidget {

  const QuestionsSummary(this.summrayData, {super.key});
  final List<Map<String, Object>> summrayData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summrayData.map(
            (data) {
              return SummrayItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
