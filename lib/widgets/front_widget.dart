import 'package:flutter/material.dart';
import '../cores/constants.dart';

class FrontWidget extends StatelessWidget {
   const FrontWidget({
    Key? key,
    required this.word,
    required this.imagePath,
  }) : super(key: key);


  final String word;
  final String imagePath;
  
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
        child : 
            Column(
              children: [
                 // Use a conditional expression to show the image only if imagePath is not empty
            SizedBox(
              width: 200, // Set the width of the container
              height: 100, // Set the height of the container
              child: 
                imagePath.isNotEmpty
                    ? Image.asset(
                        imagePath,
                        // Provide a placeholder image or use a default one if imagePath is empty
                        // If you don't have a placeholder, just use a default image
                      )
                    : Image.asset(
                        'images/no.png', // Provide the path to the default image
                      ),
              
            ),
                
                //Text(imagePath,
                  //    style: const TextStyle(
                 //    color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
                 //  ),  
                const SizedBox(height: 8,),
                 Text(word,
                      style: const TextStyle(
                     color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
                   ),
              ],
            ), // Display the image
            
      ),
    );
  }
}