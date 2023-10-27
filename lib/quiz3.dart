import 'package:flutter/material.dart';

class QuizApp3 extends StatefulWidget {
  const QuizApp3({super.key});

  @override
  QuizAppState createState() => QuizAppState();
}

class QuizAppState extends State<QuizApp3> {
  List<Question> questions = [
    Question(
      '1. For teachers, teacher-centred STEM education is ... ',
      ['A. labour-intensive','B. relieving','C. leisure time'],
      0,
    ),
    Question(
      '2. For learners, teacher-centred STEM education is ...',
      [ 'A. expensive','B. boring','C. standard'],
      2,
    ),
    Question(
      '3. The four phases for teachers in innovative STEM education are ...',
     ['A. design, experiment, analyse, rethink','B. discover, explore, apply, reflect, improve','C. experiment, analyse, rethink'],
     0,
    ),
    Question(
      '4. Go-Lab stands for...',
    ['A. Great Offline Science Laughs','B. Global Online Science Labs','C. Green Online Science Laboratories'],
    1,
    ),
    Question(
      '5. Scientix is ...',
      ['A. the community for science education','B. the cooperation for science experiments','C. the communication of science laboratories'],
      0,
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
  runApp(const QuizApp3());
}
