import 'package:flutter/material.dart';
class RegistrationPage extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text('Registration')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
    SizedBox(
    height: 20.0,
    ),
    Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(children:<Widget>[
    TextField(
    decoration: InputDecoration(labelText: ('FirstName :')),
  ),
      SizedBox(height: 10.0),
      TextField(
        decoration: InputDecoration(labelText: ('LastName :')),
      ),
      SizedBox(height: 10.0),
      TextField(
        decoration: InputDecoration(labelText: ('Email :')),
      ),
      SizedBox(height: 10.0),
      TextField(
        decoration: InputDecoration(labelText: ('Username :')),
      ),
      SizedBox(height: 10.0),
      TextField(obscureText:true,
        decoration: InputDecoration(labelText: ('Password :')),
      ),
      SizedBox(height: 10.0),
      TextField(obscureText:true,
        decoration: InputDecoration(labelText: ('Repeat Password:')),
      ),
      SizedBox(height: 10.0),
      ElevatedButton(onPressed: (){}, child: Text('Register'))
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