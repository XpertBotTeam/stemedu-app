import 'package:flutter/material.dart';
import 'homepage.dart';

class Lesson1 extends StatelessWidget {
  const Lesson1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Innovative STEM Learning'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
           RichText(
            textAlign: TextAlign.center,
          text:
          const TextSpan(
            text:
            'Exploring innovative STEM education',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )),
          const SizedBox(height: 16),
          Expanded(
            child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: 'the video title means:',
                    style: TextStyle(
                      color: Color.fromARGB(254, 0, 0, 0),
                      fontSize: 15,
                    ),
                    children: <InlineSpan>[
                      WidgetSpan(
                        alignment: PlaceholderAlignment.baseline,
                        baseline: TextBaseline.alphabetic,
                        child: LinkButton(
                            urlLabel: " World without Technology: No future",
                            url: "https://www.youtube.com/watch?v=Vi53WzYF6hY"),
                      ),
                    ])),
          ),
          YoutubeVideo("https://www.youtube.com/watch?v=Vi53WzYF6hY"),
          const SizedBox(
            height: 20,
          ),
          RichText(
            textAlign: TextAlign.center,
          text:
          const TextSpan(
            text:
            'Science\t\t\t\tTechnology\n\nEngineering\t\t\t\tMathematics\n',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 14, 63, 104),
              
            ),
          ),),
          const Text(
            'Those subjects have many elements in common; therefore, they can follow similar pedagogical approaches and teaching methods.',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const Text(
            '\n\nIt can even occur that other subjects are also included in a STEM project, just consider arts, economics, historic perspectives…',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
           RichText(
            textAlign: TextAlign.center,
          text:
          const TextSpan(
            text:
            'The Pedagogical Model Learn STEM',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )),
          const SizedBox(
            height: 20,
          ),
          RichText(
            textAlign: TextAlign.center,
          text:
          const TextSpan(
            text:
            '5 characteristics of the Pedagogical Model Learn STEM: \n\n1-Complex \n2-Processoriented \n3-Holistic \n4-Practical \n5-Social ',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),),
          const SizedBox(
            height: 20,
          ),
          RichText(
            textAlign: TextAlign.center,
          text:
          const TextSpan(
            text:
            'LearnSTEM is COMPLEX',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )),
          const SizedBox(
            height: 20,
          ),
          const Text(
            '~Is interdisciplinary and connects numerous subjects \n~Underlines common principles and approaches \n~Represents the complex relations between Science, Technology, Engineering and Mathematics \n~Supports a complex growth of the learner: intellectual, emotional, and social development',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          RichText(
            textAlign: TextAlign.center,
          text:
          const TextSpan(
            text:
            'Learn STEM is PROCESS-ORIENTED',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )),
          const SizedBox(
            height: 20,
          ),
          const Text(
            '~Learners can explore STEM in a self-regulated and creative way \n~Processes are iterative, focusing on:\n-the learners\' development \n-training basic skills-building profound knowledge \n~Practicing, repeated training and applying knowledge reinforce abilities, skills and competences',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          RichText(
            textAlign: TextAlign.center,
          text:
          const TextSpan(
            text:
            'Learn STEM is HOLISTIC',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )),
          const SizedBox(
            height: 20,
          ),
          const Text(
            '~Focuses on understanding STEM general idea in STEM rather than accumulating specialized knowledge \n~Emphasizes the ethical component of STEM •Contributes to the learners\' personal development \n~Explains and explores the environment on different levels using different models and even ‘languages’ \n~Is not simply the sum of many components, but holistic for its various interrelations',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          RichText(
            textAlign: TextAlign.center,
          text:
          const TextSpan(
            text:
            'Learn STEM is PRACTICAL',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )),
          const SizedBox(
            height: 20,
          ),
          const Text(
            '~Supports learners in building knowledge, skills and competences through real-world experiences and observations \n~Practical experiments are essential for the learning process and for the development of practical skills \n~Practical lab work develops creativity and follows the iterative learning cycle \n~Practical exercises stimulates learners’ interest and engagement',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          RichText(
            textAlign: TextAlign.center,
          text:
          const TextSpan(
            text:
            'Learn STEM is SOCIAL',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )),
          const SizedBox(
            height: 20,
          ),
          const Text(
            '~Is a Social activity with human interaction and emotional involvement \n~Is learner-centered (aiming to impact individuals and the society) \n~Is inclusive, gender balanced and values diversity \n~It creates a trusted environment for the learning process, where human diversity and self-directed learning are core elements',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
