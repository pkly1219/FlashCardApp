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
          const Text('Welcome to FlashCard App'),
          ElevatedButton(
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
            child: const Text('Next'),
          ),
          Container(
            child: 
            Lottie.asset('Lottie/Animation.json'),
            )
        
        ],
      ),
    ),
  );
}

}