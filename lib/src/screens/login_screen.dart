import 'package:flutter/material.dart';
import '../blocs/bloc.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          emailField(),
          passwordField(),
          Container(
            margin: EdgeInsets.all(10.0),
          ),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'your@example.com',
          labelText: 'Email Address',
        errorText: 'invalid email address',
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: '8-10 lenght',
        labelText: 'Password'
      ),
    );
  }

  Widget submitButton(){
    return RaisedButton(
      onPressed: (){

      },
      color: Colors.blue,
      child: Text('Login'),
    );
  }
}
