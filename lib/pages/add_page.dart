//For user to add card
import 'dart:io';
import 'package:flashcard/cores/constants.dart';
import 'package:flashcard/models/card_model.dart';
import 'package:flashcard/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class AddPage extends StatefulWidget {
   //final void Function(String, String) onAddCard;

  //const AddPage({Key? key, required this.onAddCard}) : super(key: key);
const AddPage({super.key});
  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final _cardController = TextEditingController();  //card name
  final _desController = TextEditingController();   //card description
  final _imageController = TextEditingController(); //card imagepath
  final _mybox = Hive.box<FlashCard>('flashcardbox');
  

void addCard(String cardName, String description, String imagePath) {
   //generate unique value so that when add newcard it does not replace the old card
    final String uniqueKey = DateTime.now().millisecondsSinceEpoch.toString(); 
    final newCard = FlashCard(word: cardName, definition: description, imagePath: imagePath);
    _mybox.put(uniqueKey, newCard);
    showSnackBar('New card added successfully');
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
    ));
  }

  //to check if the path of the image exist or not
  bool isFileExist(String imagePath)
  {
   var file = File(imagePath);
  // Check if the file or directory exists
  return file.existsSync();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Card'),
          backgroundColor: appBarColor,
        ),
        body: Container(
            padding: const EdgeInsets.all(20.0),
            child: ListView(children: [
              TextField(
                controller: _cardController,
                decoration: const InputDecoration(
                    hintText: 'Card Name', icon: Icon(Icons.add_card)),
              ),
              const SizedBox(height: 20),
              
              TextField(
                controller: _desController,
                decoration: const InputDecoration(
                    hintText: 'Description',
                    contentPadding: EdgeInsets.all(8),
                    icon: Icon(Icons.description_outlined)),
                maxLines:
                    6, //allow the text field display maximum 6 lines and min 1 line
                minLines: 1,
              ),
              const SizedBox(height: 20),
              
              TextField(
                 controller: _imageController,
                  decoration: const InputDecoration(
                      hintText: 'Image',
                      contentPadding: EdgeInsets.all(8),
                      icon: Icon(Icons.image_outlined))),
              const SizedBox(height: 50),
             
              Center(
                child: ElevatedButton(
                        onPressed: ()  {
                        final cardName = _cardController.text;
                        final description = _desController.text;
                        final imagePath = _imageController.text;

                        // Validate if imagePath is not empty 
                        if (imagePath.isNotEmpty ) {
                          addCard(cardName, description, imagePath);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomePage()),
                            
                          );
                        } else {
                          
                          print(File('1.png').existsSync());
                      
                          showSnackBar('Invalid image path.images');
                          
                        }
 

                        }, child: const Text('Add')),
              )
            ]
            ),
            )
            );
            
            
  }
}
