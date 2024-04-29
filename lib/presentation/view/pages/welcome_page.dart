import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flashcard/presentation/cores/constants.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../pages/home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
  
  return Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 320,
            child: AnimatedTextKit(animatedTexts: [
              ColorizeAnimatedText('Welcome to Flashcard App', textStyle: colorizeTextStyle, colors: colorizeColors)
            ], isRepeatingAnimation: true,),
          ),
          Container(
            child: 
            Lottie.asset('Lottie/AnimationWelcome.json'),
            ),
          const SizedBox(height: 40,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: background,
            ),
            onPressed: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomePage();
                  },
                ),
              );
            },
            child: const Text ('Let\'s Start', 
                                style: buttonStyle
                                ),
          ),
        
        ],
      ),
    ),
  );
}

}