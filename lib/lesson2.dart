import 'package:flutter/material.dart';
import 'homepage.dart';

class Lesson2 extends StatelessWidget {
  const Lesson2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Learner-centred STEM Education'),
        ),
        body: ListView(padding: const EdgeInsets.all(16), 
          children: [
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
            ))),
            const SizedBox(
              height: 20,
              ),
            const Text(
              'Overall structure: \nPhases for the learners \n • Iterative cycles: \n•Discover-Explore-Apply-Reflect and thenimprove(goingback)',
            style: TextStyle(
              fontSize: 18,
            ),),
            const SizedBox(
              height: 20,
              ),
            const Image(image: AssetImage('assets/L2.jpg')),
            const SizedBox(
              height: 20,
            ),
            RichText(
            textAlign: TextAlign.center,
          text:
          const TextSpan(
            text:'Stem activities exemples',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )
            ),
            const SizedBox(
              height: 20,
            ),
            YoutubeVideo("https://www.youtube.com/watch?v=6nEH2XlcJt8&pp=ygUUZWFzeSBzdGVtIGFjdGl2aXRpZXM%3D"),
            const SizedBox(
              height: 20,
            ),
            YoutubeVideo("https://www.youtube.com/watch?v=ZWJfIdZOpP4"),
            const SizedBox(
              height: 20,
            ),
            YoutubeVideo("https://www.youtube.com/watch?v=tVrlD2KIvk4"),
            const SizedBox(
              height: 20,
            ),
            YoutubeVideo("https://www.youtube.com/watch?v=TYDNBvP5dyk"),
            const SizedBox(
              height: 20,
            ),
            YoutubeVideo("https://www.youtube.com/watch?v=dxC_GuLNiAs"),
            const SizedBox(
              height: 20,
            ),
            YoutubeVideo("https://www.youtube.com/watch?v=ETtdNMbRwL4"),
            const SizedBox(
              height: 20,
            ),
            YoutubeVideo("https://www.youtube.com/watch?v=WY5abXORFSk"),
            const SizedBox(
              height: 20,
            ),
          ])); 
  }
}
