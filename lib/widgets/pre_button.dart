import 'package:flutter/material.dart';
import '../cores/constants.dart';

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
      )
      ),
    );
  }
}