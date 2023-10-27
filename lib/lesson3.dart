import 'package:flutter/material.dart';

import 'homepage.dart';

class Lesson3 extends StatelessWidget {
  const Lesson3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Teacher-centred STEM Education'),
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
            'Overall structure for Learn STEM phases',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ))),
            const SizedBox(
              height: 20,
              ),
              const Text('Overall structure:\nPhases for the teachers\n• Iterative cycles:\n• Design - Experiment - Analyse - Rethink and then improve (going back)',
              style: TextStyle(
              fontSize: 18,
            ),
              ),
              const Image(image: AssetImage('assets/L3.jpg')),
              const SizedBox(
                height: 20,
              ),
              RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Platforms for stem education',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Go-Lab for Inquiry-Based STEM Learning',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(126, 0, 0, 0),
                ),
              ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: 'you can access this site from this link, ',
                    style: TextStyle(
                      color: Color.fromARGB(254, 0, 0, 0),
                      fontSize: 15,
                    ),
                    children: <InlineSpan>[
                      WidgetSpan(
                        alignment: PlaceholderAlignment.baseline,
                        baseline: TextBaseline.alphabetic,
                        child: LinkButton(
                            urlLabel: "Go-lab",
                            url: "https://premium.golabz.eu/"),
                      ),
                    ])),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Scientix - science education community',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(126, 0, 0, 0),
                ),
              ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: 'you can access this site from this link, ',
                    style: TextStyle(
                      color: Color.fromARGB(254, 0, 0, 0),
                      fontSize: 15,
                    ),
                    children: <InlineSpan>[
                      WidgetSpan(
                        alignment: PlaceholderAlignment.baseline,
                        baseline: TextBaseline.alphabetic,
                        child: LinkButton(
                            urlLabel: "Scientix",
                            url: "https://www.scientix.eu/"),
                      ),
                    ])),
                    const SizedBox(
                      height: 20,
                    ),
        ]));
  }
}
