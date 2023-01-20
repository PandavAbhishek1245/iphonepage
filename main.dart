import 'package:flutter/material.dart';
import 'package:iphonepage/CupertinoActivityindicator_demo.dart';
import 'package:iphonepage/cupertinoalertdialog_demo.dart';
import 'package:iphonepage/cupertinonavigationbar_demo.dart';
import 'package:iphonepage/cuprtinoactionsheet_demo.dart';

import 'cupertino_button.dart';
import 'cupertinocontexztmenu_demo.dart';


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

        primarySwatch: Colors.blue,
      ),
      home:  CupertinocontextmenuDemo(),
    );
  }
}
