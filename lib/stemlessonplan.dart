import 'package:flutter/material.dart';
import 'package:stemedu/homepage.dart';


class Stem extends StatelessWidget {
  const Stem();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stem Lesson Plan'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          RichText(
            textAlign: TextAlign.center,
          text:
          const TextSpan(
            text:
            'Lesson 1',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )),
          const SizedBox(height: 16),
          YoutubeVideo("https://www.youtube.com/watch?v=jzdC6PnuFKU"),
          const SizedBox(height: 30,),
          RichText(
            textAlign: TextAlign.center,
          text:
          const TextSpan(
            text:
            'Lesson 2',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )),
          const SizedBox(height: 16),
          YoutubeVideo("https://www.youtube.com/watch?v=QBRy_9f5sps"),
          const SizedBox(height: 30,),
           RichText(
            textAlign: TextAlign.center,
          text:
          const TextSpan(
            text:
            'Lesson 3',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )),
          const SizedBox(height: 16),
          YoutubeVideo("https://www.youtube.com/watch?v=amyaYsJLjss"),
          const SizedBox(height: 30,),
           RichText(
            textAlign: TextAlign.center,
          text:
          const TextSpan(
            text:
            'Lesson 4',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )),
          const SizedBox(height: 16),
          YoutubeVideo("https://www.youtube.com/watch?v=e2lzgTmb3z4&pp=ygUQc3RlbSBsZXNzb24gcGxhbg%3D%3D"),
          const SizedBox(height: 30,),
           RichText(
            textAlign: TextAlign.center,
          text:
          const TextSpan(
            text:
            'Lesson 5',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )),
          const SizedBox(height: 16),
          YoutubeVideo("https://www.youtube.com/watch?v=mfiWzupeK3I&pp=ygUQc3RlbSBsZXNzb24gcGxhbg%3D%3D"),
          const SizedBox(height: 30,),
           RichText(
            textAlign: TextAlign.center,
          text:
          const TextSpan(
            text:
            'Lesson 6',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )),
          const SizedBox(height: 16),
          YoutubeVideo("https://www.youtube.com/watch?v=yYDSqsJqyxE&pp=ygUQc3RlbSBsZXNzb24gcGxhbg%3D%3D"),
          const SizedBox(height: 30,),
        ]
      ),
    );
  }
}
