import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  //Expolict

  //Method

  Widget backButton() {
    return IconButton(
        icon: Icon(
          Icons.navigate_before,
          size: 32.0,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        });
  }

  Widget showAppName() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        showLogo(),
        showText(),
      ],
    );
  }

  Widget showLogo() {
    return Container(
      width: 48.0,
      height: 48.0,
      child: Image.asset('images/logo.png'),
    );
  }

  Widget showText() {
    return Text(
      'Pae Shopping Mall',
      style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.blue.shade500),
    );
  }

  Widget emailText() {
    return Container(width: 250.0,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.email,size: 36.0,color: Colors.blue.shade500,),
          labelText: 'E-mail',labelStyle: TextStyle(color:Colors.blue.shade500),
        ),
      ),
    );
  }
  Widget passwordText() {
    return Container(width: 250.0,
      child: TextFormField(
         obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.lock,size: 36.0,color: Colors.blue.shade500,),
          labelText: 'Password',labelStyle: TextStyle(color:Colors.blue.shade500),
        ),
      ),
    );
  }



  Widget content() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          showAppName(),
          emailText(),
          passwordText(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            backButton(),
            content(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: null,child: Icon(Icons.navigate_next),),
    );
  }
}
