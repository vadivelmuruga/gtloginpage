import 'package:flutter/material.dart';
import 'package:gtloginpage/amz%20log.dart';
import 'package:gtloginpage/fonts.dart';
import 'package:gtloginpage/home.dart';
import 'package:gtloginpage/insta.dart';
import 'package:gtloginpage/login.dart';
import 'package:gtloginpage/menu.dart';
import 'package:gtloginpage/plan.dart';
import 'package:gtloginpage/sample.dart';
import 'package:gtloginpage/spotify.dart';
import 'package:gtloginpage/textedit.dart';
import 'package:gtloginpage/validation.dart';

import 'abc.dart';
import 'amazon.dart';
import 'amz home.dart';
import 'back.dart';
import 'bold.dart';
import 'calcu.dart';
import 'dash.dart';
import 'gtlogin.dart';
import 'new.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: asm(),    
    );
  }
}
