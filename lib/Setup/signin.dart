import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/Pages/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email;
  String _password;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                validator: (value) =>
                    value.isEmpty ? 'Please type an email' : null,
                onSaved: (value) => _email = value,
                decoration: InputDecoration(labelText: 'Email'),
                autofocus: true,
              ),
              TextFormField(
                validator: (value) => value.length < 6
                    ? 'Your password need to be atleast 6 characters'
                    : null,
                onSaved: (value) => _password = value,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
              RaisedButton(
                onPressed: signIn,
                child: Text('Sign in'),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> signIn() async {
    final formState = formKey.currentState;
    if (formState.validate()) {
      formState.save();
      print('form is valid. Email: $_email, password:$_password');
      try {
        FirebaseUser user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
        print(user);
        Navigator.push( context, MaterialPageRoute(builder: (context) => Home()));
      } catch (e) {
        print(e.message);
      }
    } else {
      print('form is invalid. Email: $_email, password:$_password');
    }
  }
}
