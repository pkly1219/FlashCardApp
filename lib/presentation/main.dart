import '../presentation/model/card_model.dart';
import '../presentation/view/pages/flash_screen.dart';
import 'package:flutter/material.dart';
import '../presentation/cores/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';


void main() async {
//Initialize hive
 await Hive.initFlutter();
 Hive.registerAdapter(FlashCardAdapter()); // Register the adapter for Flashcard

//open and assign it to box
  var box = await Hive.openBox<FlashCard>('flashcardbox');

// Run the app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //not show the debug banner in the corner screen
      title: 'Flash Card',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: card),
        useMaterial3: true,
      ),
      home: const FlashScreen(),
    );
  }
}


