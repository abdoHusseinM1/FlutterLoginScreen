import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/counterScreen.dart';
import 'package:untitled1/messenger_screen.dart';
import 'package:untitled1/users_screen.dart';

import 'LoginScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),
      debugShowCheckedModeBanner: false,

    );
  }

}