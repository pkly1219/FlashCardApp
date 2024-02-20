import 'package:flutter/material.dart';
import '../cores/constants.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key, required this. nextCard});

  final VoidCallback nextCard;
  @override
  Widget build(BuildContext context) {
  
    return GestureDetector(
      onTap: nextCard,
      child: Container(
         
          child: const Text(
                'Next',
                textAlign: TextAlign.center,
      )
      ),
    );
  }
}
