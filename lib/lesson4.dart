import 'package:flutter/material.dart';

class Lesson4 extends StatelessWidget {
  const Lesson4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Innovative STEM Assessment'),
        ),
        body: ListView(padding: const EdgeInsets.all(16), children: [
          RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Exploring innovative STEM education',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )),
              const SizedBox(height: 16),
              RichText(
            textAlign: TextAlign.center,
          text:
          const TextSpan(
            text:
            '1.Discussing key questions of innovative STEM assessment \n\n2.Analysing four aspects of innovative STEM assessment \n\n3.Testing innovative assessment instruments and tools',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ))),
            const SizedBox(
              height: 30,
            ),
            RichText(
            textAlign: TextAlign.center,
          text:
          const TextSpan(
            text:
            'Discussing key questoins',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ))),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Key questions of STEM assessment: \n\n•Why do you assess? \n•Who should do the assessment? \n•What do you assess? \n•How do you assess?',
            style: TextStyle(
              fontSize: 18,
            ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
            textAlign: TextAlign.center,
          text:
          const TextSpan(
            text:
            'Four aspects of STEM assessment',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ))),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'The four aspects of STEM assessment in detail: \n\n•Why do you assess? market\n•Who should do the assessment? audiance\n•What do you assess? value \n•How do you assess? Process',
            style: TextStyle(
              fontSize: 18,
            ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
            textAlign: TextAlign.center,
          text:
          const TextSpan(
            text:
            'Testing assessment instruments & tools',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ))),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '1.Plickers \n\n2.ZipGrade \n\n3.Badgecraft',
            style: TextStyle(
              fontSize: 18,
            ),
            ),
            const SizedBox(
              height: 20,
            ),
        ]));
  }
}