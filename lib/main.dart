import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/list.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/spalshs.dart';

 

void main (){
  runApp( MyApp());
}
class  MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "login",
      home:screensplash(),
    );
  }
}

