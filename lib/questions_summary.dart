import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (data) {
          return Row(
            children: [
              Text(((data['question_index'] as int) + 1).toString()), //將 int 轉換成 string 
              Expanded(
                child: Column(children: [
                  const SizedBox(height: 5,),
                  Text(data['question'] as String),
                  Text(data['user_answer'] as String),
                  Text(data['correct_answer'] as String),
                ],),
              ),
            ],
          );
        },
      ).toList(),
    );
  }
}
