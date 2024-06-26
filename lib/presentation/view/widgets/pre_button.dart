import 'package:flutter/material.dart';
import 'package:flashcard/presentation/cores/constants.dart';

//widget for the previous button on the homepage
class PreButton extends StatelessWidget {
  const PreButton({super.key, required this. preCard});

  final VoidCallback preCard;
  @override
  Widget build(BuildContext context) {
  
    return GestureDetector(
      onTap: preCard,
      child: Container(
         
          child: const Text(
                'Back',
                textAlign: TextAlign.center,
                style: buttonStyle,
      )
      ),
    );
  }
}