import 'package:flutter/material.dart';
import 'package:stemedu/homepage.dart';
class Registrationpage extends StatefulWidget{
  const Registrationpage({super.key});

  @override
  State<Registrationpage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<Registrationpage> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: const Text('Registration')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
    const SizedBox(
    height: 20.0,
    ),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(children:<Widget>[
    const TextField(
    decoration: InputDecoration(labelText: ('FirstName :')),
  ),
      const SizedBox(height: 10.0),
      const TextField(
        decoration: InputDecoration(labelText: ('LastName :')),
      ),
      const SizedBox(height: 10.0),
      const TextField(
        decoration: InputDecoration(labelText: ('Email :')),
      ),
      const SizedBox(height: 10.0),
      const TextField(
        decoration: InputDecoration(labelText: ('Username :')),
      ),
      const SizedBox(height: 10.0),
      const TextField(obscureText:true,
        decoration: InputDecoration(labelText: ('Password :')),
      ),
      const SizedBox(height: 10.0),
      const TextField(obscureText:true,
        decoration: InputDecoration(labelText: ('Repeat Password:')),
      ),
      const SizedBox(height: 10.0),
      ElevatedButton(onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>const Homepage()));
      }, child: const Text('Register'))
        ]
    )
    )
            ],
          ),
        ),
      ),
    );
  }
}