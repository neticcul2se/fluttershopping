import 'package:flutter/material.dart';
import 'package:paeshoppingmall/screens/home.dart';
import 'package:paeshoppingmall/screens/register.dart';
void main(){
runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Home(),
      
    );
  }
}