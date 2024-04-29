import 'dart:async';
import 'package:flashcard/presentation/cores/constants.dart';
import 'package:flashcard/presentation/view/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({super.key});

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
 
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime(){
    var duration = const Duration(seconds:5); //time for the splash screen showing
    return Timer(duration,route);
  }

  route(){
    Navigator.pushReplacement(context,  
                  MaterialPageRoute(
                  builder: (context) {
                    return const WelcomePage();
                  },
                ),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: 
      Column(
        children: [
          const SizedBox(height:100),
          SizedBox(
            width: 400,
            height: 600 ,
            child: Lottie.asset('Lottie/AnimationLaunching.json')
          
          ),
          
        ],
      ),
    );
  }
}