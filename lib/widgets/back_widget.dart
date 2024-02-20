import 'package:flutter/material.dart';
import '../cores/constants.dart';

class BackWidget extends StatelessWidget {
  const BackWidget({ super.key,
  required this.definition, 
  });
  final String definition;
  
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      color: card,
      child: Container(
        height: 200,
        width: 300,
        alignment: Alignment.center,
        child: Text(definition,textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}