import 'package:flutter/material.dart';
import 'registrationpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STEM education',
      home: const MyHomePage(title: 'STEM education platform'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage('assets/logo.jpg'),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(children:<Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Username :'),
                ),
                SizedBox(height: 10.0),
                TextField(obscureText:true,
                decoration: InputDecoration(labelText: ('Password :')),
              ),
             ]
            ),
            ),
            SizedBox(height:10.0),
            ElevatedButton(
            onPressed: (){},
            child:Text('Login')
            ),
            SizedBox(height: 10.0),
            TextButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>RegistrationPage()));
            },
                child:Text('Register')
            )
          ]
               
                 ),
      ),
    );
  }
}
