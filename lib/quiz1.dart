import 'package:flutter/material.dart';

class QuizApp1 extends StatefulWidget {
  const QuizApp1({super.key});

  @override
  QuizAppState createState() => QuizAppState();
}

class QuizAppState extends State<QuizApp1> {
  List<Question> questions = [
    Question(
      '1. What does STEM stand for? ',
      ['A. Science, Technology, Engineering and Mathematics', ' B. Science, Teaching, Engaging and Mathematics ', 'C. Science, Technology, Engineering and Marketing '],
      0,
    ),
    Question(
      '2. Innovative STEM education is:  ',
      ['A. teacher-centred ', 'B. parents-centred', ' C. learner-centred'],
      2,
    ),
    Question(
      '3. The Pedagogical Model Learn STEM ...',
      [' A. highlights the importance of STEM subjects as separate disciplines', ' B. recognises that the STEM subjects require an interdisciplinary view', 'C. explains how meaningful the focus on single STEM subjects is  '],
      1,
    ),
    Question(
      '4. Learn STEM focuses on these five characteristics of the learning process: ',
      [' A. Complex, process-oriented, holistic, practical, social', 'B. Simple, teacher-centred, practical, social, goal-oriented  ','C. Complex, process-oriented, simple, practical, social  '],
      0,
    ),
    Question(
      '5. Learn STEM suggests that the learning process is: ',
      [' A. goal centred and linear ', 'B. going through iterative improvement cycles ', ' C. not clearly defined yet '],
      1,
    ),
    Question(
      '6. The statement that Learn STEM is Complex means: ',
      [' A. it is interdisciplinary and connects numerous subjects ', 'B. it emphasizes the ethical component of STEM ', 'C. it supports learners in building knowledge, skills and competences'],
      0,
    ),
    Question(
      '7. The statement that Learn STEM is Practical means:',
      ['A. it is learner-centred ', 'B. it emphasizes the ethical component of STEM ', 'C. it supports learners in acquiring knowledge, skills and competences '],
      2,
    ),
   Question(
      '8. The statement that Learn STEM is Holistic means: ',
      [' A. it explains and explores the environment of different levels using different models and even languages ', 'B. it supports a complex growth of the learner ', 'C. it is inclusive, gender balanced and values diversity '],
      0,
    ),
    Question(
      '9. The statement that Learn STEM is Complex means: ',
      [' A. it supports a complex growth of the learner ', 'B. practical experiments are essential for the learning process and for the development of practical skills ','C. it creates a trusted environment for the learning process '],
      0,
    ),
    Question(
      '10. The statement that Learn STEM is Social means: ',
      ['A. it supports learners in acquiring knowledge, skills and competences ','B. learning happens just inside school ','C. it is learner-centred aiming to impact individuals and society '],
      2,
    ),
    Question(
      '11. The Pedagogical Model Learn STEM incorporates the complexity of STEM learning activities. This means: ',
      ['A. it is related to the various STEM disciplines ','B. it connects the world of learners with our society','C. it is interrelated with other areas '],
      2,
    ),
    Question(
      '12. The statement that Learn STEM is Process-oriented means: ',
      ['A. STEM learning is feasible in a self-regulated and creative way ','B. STEM learning needs no visible feedback and reflection','C. the learning process has to fulfil teacher’s expectations '],
      0,
    ),
    Question(
      '13. Learners who build STEM competences in one or more fields: ',
      ['A. should be given a new task to use these competences in the following cycle','B. should be assessed to give them a certain evaluation','C. should be given a new task beyond the new STEM competences'],
      0,
    ),
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
  runApp(const QuizApp1());
}
