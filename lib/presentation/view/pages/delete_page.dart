import 'package:flashcard/presentation/cores/constants.dart';
import 'package:flashcard/presentation/model/card_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:lottie/lottie.dart';

class DeletePage extends StatefulWidget {
  final VoidCallback onDelete;

  const DeletePage({Key? key, required this.onDelete}) : super(key: key);


  @override
  State<DeletePage> createState() => DeletePageState();
}

class DeletePageState extends State<DeletePage> with SingleTickerProviderStateMixin {
   final _mybox = Hive.box<FlashCard>('flashcardbox');
   late AnimationController controller;

   @override
  void initState(){
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 3), 
      vsync: this,
    );

    controller.addStatusListener((status) async 
    { 
      if (status == AnimationStatus.completed)
      {
        widget.onDelete(); // Notify the HomePage about the deletion
        setState(() {}); 
        Navigator.pop(context); // Update the UI
      }
    });
  }

  @override
  void dispose()
  {
    controller.dispose();
    super.dispose();
  }
  void showDeleteDialog()=> showDialog(
  context: context, 
  builder: (context) => Dialog(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 5),
        const Text('Delete Card Successful!', style: dialogStyle,),
        //const SizedBox(height: 5),
        Lottie.asset('Lottie/AnimationDelete.json',
                      controller: controller,
                      onLoaded: (composition){
                        controller.forward();
                      }),
        
        
        
      ],
    )
  ));
  void deleteCard(int index) {
     controller.reset(); // Reset animation controller before starting animation
    _mybox.deleteAt(index);
    showDeleteDialog();
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
          shape: RoundedRectangleBorder(
          side: const BorderSide(
           color: appBarColor, 
           ),
    borderRadius: BorderRadius.circular(20.0),
  ),
          child: ListTile(
            onTap: (){
             deleteCard(index);
            }, 
           
            title:Row(
              children: [
                CircleAvatar(
                  radius:26,
                  backgroundColor: appBarColor,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(_mybox.getAt(index)?.imagePath ??'images/no.png'),
                    backgroundColor: Colors.pink[50],
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