import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:paeshoppingmall/screens/authen.dart';
import 'package:paeshoppingmall/screens/my_service.dart';
import 'package:paeshoppingmall/screens/register.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Method

@override
void iniState(){
  super.initState();
  checkStatus();
}
Future<void> checkStatus()async{

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  FirebaseUser firebaseUser = await firebaseAuth.currentUser();
  if(firebaseUser !=null){
    MaterialPageRoute materialPageRoute  = MaterialPageRoute(builder: (BuildContext context)=> MyService());
    Navigator.of(context).pushAndRemoveUntil(materialPageRoute,(Route<dynamic> route)=>false);
  }
}

  Widget showLogo() {
    return Container(
        width: 120.0, height: 120.0, child: Image.asset('images/logo.png'));
  }

  Widget showAppName() {
    return Text(
      'Pae shopping mall',
      style: TextStyle(
        fontSize: 30.0,
        color: Colors.blue.shade700,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontFamily: 'Righteous',
      ),
    );
  }

  Widget showButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        signInButton(),
        SizedBox(
          width: 4.0,
        ),
        signUpButton(),
      ],
    );
  }

  Widget signInButton() {
    return RaisedButton(
      color: Colors.blue.shade600,
      child: Text(
        'sign in',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
          MaterialPageRoute materialPageRoute = MaterialPageRoute(builder: (BuildContext context)=> Authen());
          Navigator.of(context).push(materialPageRoute);

      },
    );
  }

  Widget signUpButton() {
    return OutlineButton(child: Text('sign Up'), onPressed: () {

        print('you click sign up');

        MaterialPageRoute materialPageRoute = MaterialPageRoute(builder: (BuildContext context) => Register());
        Navigator.of(context).push(materialPageRoute);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Colors.white, Colors.yellow.shade700],
            radius: 1.0,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              showLogo(),
              showAppName(),
              SizedBox(
                height: 8.0,
              ),
              showButton(),
            ],
          ),
        ),
      )),
    );
  }
}
