import 'package:flashcard/cores/constants.dart';
import 'package:flashcard/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../pages/home_page.dart';

class DeletePage extends StatefulWidget {
  final VoidCallback onDelete;

  const DeletePage({Key? key, required this.onDelete}) : super(key: key);


  @override
  State<DeletePage> createState() => DeletePageState();
}

class DeletePageState extends State<DeletePage> {
   final _mybox = Hive.box<FlashCard>('flashcardbox');

  void deleteCard(int index) {
    _mybox.deleteAt(index);
    showSnackBar('Card deleted successfully');
    widget.onDelete(); // Notify the HomePage about the deletion
    setState(() {}); // Update the UI
  
  }

  void showSnackBar(String message) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
    ));
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
          title: const Text('Delete Card'),
          backgroundColor: appBarColor,

       ),
       body: ListView.builder(
           padding: const EdgeInsets.all(14),
           itemCount: _mybox.length,
           itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            onTap: (){
             deleteCard(index);
            }, 
           
            title:Row(
              children: [
                CircleAvatar(
                  radius:26,
                  backgroundColor: const Color.fromARGB(255, 60, 138, 239),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(_mybox.getAt(index)?.imagePath ??'images/no.png'),
                    ),
                ),
                 const SizedBox(width: 20, height: 20,),
                Text(_mybox.getAt(index)?.word ?? "No Value"),
              ],
            )),
        );
           }
         ),
     );
  }
}