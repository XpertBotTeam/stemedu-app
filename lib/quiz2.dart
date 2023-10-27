import 'package:flutter/material.dart';

class QuizApp2 extends StatefulWidget {
  const QuizApp2({super.key});

  @override
  QuizAppState createState() => QuizAppState();
}

class QuizAppState extends State<QuizApp2> {
  List<Question> questions = [
    Question(
      '1. For teachers, learner-centred STEM education is ... ',
      ['A. labour-intensive    ','B. relieving     ','C. leisure time '],
      0,
    ),
    Question(
      '2. For learners, learner-centred STEM education is ... ',
      ['A. expensive ','B. boring    ','C. challenging '],
      2,
    ),
    Question(
      '3. The four phases of learner-centred STEM education are ... ',
      ['A. Discuss, Explain, Act, Reflect    ','B. Discover, Explore, Apply, Reflect    ','C. Discover, Explore, Act, Restore'],
      1,
    ),
    Question(
      '4. The iterative progress of the Learn STEM phases ... ',
      ['A. is strictly defined and offers exactly one pathway    ','B. allows just minimal changes and interpretations    ','C. is flexible and allows different pathways and options'],
      2,
    ),
    Question(
      '5. The Pedagogical Model Learn STEM can be used in ... ',
      ['A. teacher-oriented shopping    ','B. learner-centred education    ','C. parents-based workshop '],
      1,
    )
    ];

  int currentQuestionIndex = 0;
  int score = 0;

  void checkAnswer(int selectedIndex) {
    int correctIndex = questions[currentQuestionIndex].correctIndex;

    setState(() {
      if (selectedIndex == correctIndex) {
        score++;
      }

      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        // Show a dialog with the final score
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Quiz Finished'),
              content: Text('Your Score: $score/${questions.length}'),
              actions: [
                TextButton(
                  child: const Text('Restart Quiz'),
                  onPressed: () {
                    setState(() {
                      currentQuestionIndex = 0;
                      score = 0;
                    });
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MCQ Quiz App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              questions[currentQuestionIndex].questionText,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Column(
              children: questions[currentQuestionIndex].options
                  .asMap()
                  .entries
                  .map((option) => RadioListTile(
                        title: Text(option.value),
                        value: option.key,
                        groupValue: null,
                        onChanged: (selectedIndex) {
                          checkAnswer(selectedIndex!);
                        },
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class Question {
  String questionText;
  List<String> options;
  int correctIndex;

  Question(this.questionText, this.options, this.correctIndex);
}

void main() {
  runApp(const QuizApp2());
}
