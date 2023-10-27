import 'package:flutter/material.dart';

class QuizApp4 extends StatefulWidget {
  const QuizApp4({super.key});

  @override
  QuizAppState createState() => QuizAppState();
}

class QuizAppState extends State<QuizApp4> {
  List<Question> questions = [
    Question(
      '1. The aim of the assessment process is: ',
      ['A. to check if learners have achieved the objectives of the course','B. to compare the learners with each others','C. to reward the best learners and punish the worst ones'],
      0,
    ),
    Question(
      '2. Can self-evaluation be quantitative?',
      [ 'A. Yes, but only on the basis of criteria set by the teachers.',' B. Yes, if the learners are involved in the process of setting criteria for the evaluation.','C. No, it is only done on the basis of qualitative open questions.'],
      1,
    ),
    Question(
      '3. Co-evaluation is defined as:',
      ['A. the evaluation process is a combination of all possible methods','B. the learners assess their peers or classmates','C. the assessment comes from an agreement between the teacher and the learner '],
      2,
    ),
    Question(
      '4. Which is the biggest advantage of teacher evaluation?',
      ['A. teachers cannot be fooled ','B. teachers have followed closely the entire learning process','C. teachers are more strict in appliying the assessment criteria than pupils '],
      1,
    ),
    Question(
      '5. Peer evaluation has the advantage to make the learners more responsible, and can be very effective in some circustances, but there are risks to avoid: ',
      ['A. interpersonal likes and dislikes among the learners can influence the assessment and make it less objective ','B. the learners do not have the ability to evaluate each other ','C. learners are more prone to give higher grades to their peers or classmates '],
      0,
    ),
    Question(
      '6. Which is the main advantage of an external evaluation?',
       ['A.External experts are more knowledgeable than the teachers.','B. External experts are usually more objective.','C. External evaluation is faster.'],
       1,
    ),
    Question(
      '7. Skills can be of two types, according to the European Qualifican Framework:',
      ['A. soft and hard','B. easy and hard','C. cognitive and practical'],
      2,
    ),
    Question(
      '8. What is a competence?',
      [' A. the proven ability to use knowledge, skills and personal, social and/or methodological abilities, in work or study situations and in professional and personal development ','B. the ability to apply knowledge and to use know-how to complete tasks and solve problems ','C. the level of expertise of a person in a specific field of study or work '],
      0,
    ),
    Question(
      '9. Formative assessment is:',
       ['A. Learner evaluation at the end of the project.','B. Learner evaluation during the project, several times.','C. Learner evaluation during the process, once over a long period. ','D. Evaluation of the product.'],
       1,
    ),
    Question(
      '10. Exams are an example of a:',
       ['A. formative assessment ','B. summative assessment','C. process evaluation ','D. product evaluation'],
       1,
    ),
    Question(
      '11. Assessing the process is important for: ',
      ['A. guiding the learning of the learner ','B. building a holistic image of the learner ','C. scaffolding the learner ','D. all of the above'],
      3,
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
  runApp(const QuizApp4());
}
