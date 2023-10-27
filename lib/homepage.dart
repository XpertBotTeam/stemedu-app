library draggable_home;

import 'package:stemedu/quiz1.dart';
import 'package:stemedu/Lesson1.dart';
import 'package:stemedu/Lesson2.dart';
import 'package:flutter/material.dart';
import 'package:stemedu/quiz2.dart';
import 'package:stemedu/quiz3.dart';
import 'package:stemedu/quiz4.dart';
import 'package:stemedu/stemlessonplan.dart';
import 'package:url_launcher/url_launcher.dart' show launchUrl;
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'lesson3.dart';
import 'lesson4.dart';

//import 'package:flutter/services.dart';
//import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: ListView(children: <Widget>[
          const Image(image: AssetImage('assets/stem.jpg')),
          const SizedBox(
            height: 50.0,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: 'Welcome to the Learn STEM Online Course\n\n',
              style: TextStyle(
                color: Color.fromARGB(254, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: 'Learn Stem in 4 lessons\n\n',
              style: TextStyle(
                color: Color.fromARGB(254, 0, 0, 0),
                fontSize: 20,
              ),
            ),
          ),
          RichText(
            textAlign: TextAlign.left,
            text: const TextSpan(
              text: ' Introduction\n\n',
              style: TextStyle(
                color: Color.fromARGB(254, 0, 0, 0),
                fontSize: 20,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          YoutubeVideo("https://www.youtube.com/watch?v=KRd5cEfbSTU"),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: 'you can access this video by this link, ',
                    style: TextStyle(
                      color: Color.fromARGB(254, 0, 0, 0),
                      fontSize: 15,
                    ),
                    children: <InlineSpan>[
                      WidgetSpan(
                        alignment: PlaceholderAlignment.baseline,
                        baseline: TextBaseline.alphabetic,
                        child: LinkButton(
                            urlLabel: "click here",
                            url: "https://www.youtube.com/watch?v=KRd5cEfbSTU"),
                      ),
                    ])),
          ),
          const SizedBox(
            height: 50,
          ),
          RichText(
            textAlign: TextAlign.left,
            text: const TextSpan(
              text: ' Lesson 1: Innovative STEM Learning\n\n',
              style: TextStyle(
                color: Color.fromARGB(254, 0, 0, 0),
                fontSize: 20,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
          YoutubeVideo("https://www.youtube.com/watch?v=Ot6EpUaNOn0"),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text: 'you can access this video by this link, ',
                      style: TextStyle(
                        color: Color.fromARGB(254, 0, 0, 0),
                        fontSize: 15,
                      ),
                      children: <InlineSpan>[
                        WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: LinkButton(
                              urlLabel: "click here",
                              url:
                                  "https://www.youtube.com/watch?v=Ot6EpUaNOn0"),
                        ),
                      ]))),
          OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Lesson1()));
            },
            style: OutlinedButton.styleFrom(
                textStyle: const TextStyle(
              fontSize: 18, // Change the font size
              fontWeight: FontWeight.bold, // Change the font weight
              color: Colors.red, // Change the text color
            )),
            child: const Text('Lesson 1 materials'),
          ),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const QuizApp1()));
            },
            style: OutlinedButton.styleFrom(
                textStyle: const TextStyle(
              fontSize: 18, // Change the font size
              fontWeight: FontWeight.bold, // Change the font weight
              color: Colors.red, // Change the text color
            )),
            child: const Text('Quiz 1'),
          ),
          const SizedBox(
            height: 50,
          ),
           RichText(
            textAlign: TextAlign.left,
            text: const TextSpan(
              text: ' Lesson 2: Learner-centred STEM Education\n\n',
              style: TextStyle(
                color: Color.fromARGB(254, 0, 0, 0),
                fontSize: 20,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
          YoutubeVideo("https://www.youtube.com/watch?v=FZQKgco3b1Q"),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text: 'you can access this video by this link, ',
                      style: TextStyle(
                        color: Color.fromARGB(254, 0, 0, 0),
                        fontSize: 15,
                      ),
                      children: <InlineSpan>[
                        WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: LinkButton(
                              urlLabel: "click here",
                              url:
                                  "https://www.youtube.com/watch?v=FZQKgco3b1Q"),
                        ),
                      ]))),
          OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Lesson2()));
            },
            style: OutlinedButton.styleFrom(
                textStyle: const TextStyle(
              fontSize: 18, // Change the font size
              fontWeight: FontWeight.bold, // Change the font weight
              color: Colors.red, // Change the text color
            )),
            child: const Text('Lesson 2 materials'),
          ),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const QuizApp2()));
            },
            style: OutlinedButton.styleFrom(
                textStyle: const TextStyle(
              fontSize: 18, // Change the font size
              fontWeight: FontWeight.bold, // Change the font weight
              color: Colors.red, // Change the text color
            )),
            child: const Text('Quiz 2'),
          ),
          const SizedBox(
            height: 50,
          ),
           RichText(
            textAlign: TextAlign.left,
            text: const TextSpan(
              text: ' Lesson 3: Teacher-centred STEM Education\n\n',
              style: TextStyle(
                color: Color.fromARGB(254, 0, 0, 0),
                fontSize: 20,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
          YoutubeVideo("https://www.youtube.com/watch?v=j7KORZYOnyQ"),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text: 'you can access this video by this link, ',
                      style: TextStyle(
                        color: Color.fromARGB(254, 0, 0, 0),
                        fontSize: 15,
                      ),
                      children: <InlineSpan>[
                        WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: LinkButton(
                              urlLabel: "click here",
                              url:
                                  "https://www.youtube.com/watch?v=j7KORZYOnyQ"),
                        ),
                      ]))),
          OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Lesson3()));
            },
            style: OutlinedButton.styleFrom(
                textStyle: const TextStyle(
              fontSize: 18, // Change the font size
              fontWeight: FontWeight.bold, // Change the font weight
              color: Colors.red, // Change the text color
            )),
            child: const Text('Lesson 3 materials'),
          ),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const QuizApp3()));
            },
            style: OutlinedButton.styleFrom(
                textStyle: const TextStyle(
              fontSize: 18, // Change the font size
              fontWeight: FontWeight.bold, // Change the font weight
              color: Colors.red, // Change the text color
            )),
            child: const Text('Quiz 3'),
          ),
          const SizedBox(
            height: 50,
          ),
           RichText(
            textAlign: TextAlign.left,
            text: const TextSpan(
              text: ' Lesson 4: Innovative STEM Assessment\n\n',
              style: TextStyle(
                color: Color.fromARGB(254, 0, 0, 0),
                fontSize: 20,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
          YoutubeVideo("https://www.youtube.com/watch?v=R4uLeLy6TMg"),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text: 'you can access this video by this link, ',
                      style: TextStyle(
                        color: Color.fromARGB(254, 0, 0, 0),
                        fontSize: 15,
                      ),
                      children: <InlineSpan>[
                        WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: LinkButton(
                              urlLabel: "click here",
                              url:
                                  "https://www.youtube.com/watch?v=R4uLeLy6TMg"),
                        ),
                      ]))),
          OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Lesson4()));
            },
            style: OutlinedButton.styleFrom(
                textStyle: const TextStyle(
              fontSize: 18, // Change the font size
              fontWeight: FontWeight.bold, // Change the font weight
              color: Colors.red, // Change the text color
            )),
            child: const Text('Lesson 4 materials'),
          ),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const QuizApp4()));
            },
            style: OutlinedButton.styleFrom(
                textStyle: const TextStyle(
              fontSize: 18, // Change the font size
              fontWeight: FontWeight.bold, // Change the font weight
              color: Colors.red, // Change the text color
            )),
            child: const Text('Quiz 4'),
          ),
          const SizedBox(
            height: 60,
          ),
           OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Stem()));
            },
            style: OutlinedButton.styleFrom(
                textStyle: const TextStyle(
              fontSize: 18, // Change the font size
              fontWeight: FontWeight.bold, // Change the font weight
              color: Colors.black, // Change the text color
            )),
            child: const Text('Stem Lesson Plan'),
          ),
          const SizedBox(
            height: 20,
          ),
        ]));
  }
}

class LinkButton extends StatelessWidget {
  const LinkButton({Key? key, required this.urlLabel, required this.url})
      : super(key: key);

  final String urlLabel;
  final String url;

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri)) {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
        minimumSize: const Size(0, 0),
        textStyle: Theme.of(context).textTheme.bodySmall,
      ),
      onPressed: () {
        _launchUrl(url);
      },
      child: Text(
        urlLabel,
        style: TextStyle(
          color: const Color.fromARGB(255, 9, 62, 105),
          fontSize: 15,
          fontFamily: GoogleFonts.lato().fontFamily,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class YoutubeVideo extends StatefulWidget {
  String youtubeUrl;

  // ignore: use_key_in_widget_constructors
  YoutubeVideo(this.youtubeUrl);

  @override
  // ignore: library_private_types_in_public_api
  _YoutubeVideoState createState() => _YoutubeVideoState();
}

class _YoutubeVideoState extends State<YoutubeVideo> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  late YoutubePlayerController _controller;
  late TextEditingController _idController;
  late TextEditingController _seekToController;
  final bool _isPlayerReady = false;
  late String videoId;

  @override
  void initState() {
    super.initState();
    videoId = YoutubePlayer.convertUrlToId(widget.youtubeUrl)!;
    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(listener);
    _idController = TextEditingController();
    _seekToController = TextEditingController();
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {});
    }
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    _idController.dispose();
    _seekToController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.blue,
      child: VisibilityDetector(
        key: const Key("unique key"),
        onVisibilityChanged: (info) {
          if (info.visibleFraction == 0) {
            _controller.pause();
          } else {
            _controller.value.isPlaying
                ? _controller.play()
                : _controller.pause();
          }
        },
        child: YoutubePlayerBuilder(
          onExitFullScreen: () {
            // The player forces portraitUp after exiting fullscreen. This overrides the behaviour.
            SystemChrome.setPreferredOrientations(DeviceOrientation.values);
          },
          player: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Color.fromARGB(255, 45, 35, 155),
            topActions: <Widget>[
              const SizedBox(width: 8.0),
              Expanded(
                child: Text(
                  _controller.metadata.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
            onReady: () {
              _controller.addListener(listener);
            },
            onEnded: (data) {},
          ),
          builder: (context, player) => Scaffold(
            key: _scaffoldKey,
            body: ListView(
              children: [
                player,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*class DraggableHome extends StatefulWidget {
  @override
  _DraggableHomeState createState() => _DraggableHomeState();
}*/
