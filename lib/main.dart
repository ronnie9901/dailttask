import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:dailttask/alarm.dart';
import 'package:dailttask/utils/1.dart';
import 'package:dailttask/utils/2.dart';
import 'package:dailttask/utils/3.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {

       '/':(context)=> first(),
       '/analog':(context)=> second(),
       '/strap':(context)=> third(),
     },
    );
  }
}

