import 'dart:async';

import 'package:flutter/material.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
  
}
class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    super.initState();

    Timer (Duration(seconds: 5),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const MyHomePage(title: 'Mobeine Car'),
          ));

    });
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color: Colors.white10,
        child: Center(
          child:Container(
              width:200 ,
              height: 200,
              child: Image.asset('assets/images/splash.png'))
        ),
      )
    );
  }
  
}