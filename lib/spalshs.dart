import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

class screensplash extends StatefulWidget { 
  const screensplash({super.key});

  @override
  State<screensplash> createState() => _screensplashState();
}

class _screensplashState extends State<screensplash> {


   @override
  void initState() {
    logined();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.black,
      body: Center(
      child:Icon(Icons.movie,color: Colors.amber,size: 200,)
    )
    );
  }
Future<void> logined() async{
 await Future.delayed(Duration(seconds:3));
 Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>loginpage()));
}
}
