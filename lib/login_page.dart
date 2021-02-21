import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView (
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder()
                ),
              ),

              SizedBox(height: 15,),
              TextField(
                onChanged: (text) {
                  password = text;
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder()
                ),
              ),
              RaisedButton(
                onPressed: () {
                  if (email == 'lucasmilitao@email.com' && password == 'lucas2312') {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomePage())
                    );
                  } else {
                    print('login incorreto');
                  }
                },
                child: Text('Entrar'),  
              )
            ],
          ),
          )
        ),
      )
    );
  }
}