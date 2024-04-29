
import 'package:flashcard/presentation/view/pages/add_page.dart';
import 'package:flashcard/presentation/view/widgets/next_button.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flashcard/presentation/cores/constants.dart';
import 'package:hive/hive.dart';
import 'package:flashcard/presentation/model/card_model.dart';
import '../widgets/front_widget.dart';
import '../widgets/back_widget.dart';
import '../widgets/pre_button.dart';
import 'delete_page.dart';


class HomePage extends StatefulWidget {

const HomePage({super.key});
 

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final _mybox = Hive.box<FlashCard>('flashcardbox');
  
  //first index to loop through list of cards
  int index = 0; 

  //function to display the next card
  void nextCard(){
    setState(() {
      if (index < _mybox.length - 1) {
        index++;
      } else {
        showSnackBar('End of card list');
      }
    });
    }

  //function to display the previous card
  void preCard(){
    setState(() {
      if (index > 0) {
        index--;
      } else {
        showSnackBar('Beginning of card list');
      }
    });
    }

    //show snackbar to print out the notification to users
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
          automaticallyImplyLeading: false,
          title: const Text('Flashcard App'),
          backgroundColor: appBarColor,
            actions: [
          PopupMenuButton(
            onSelected: (value) {
              if (value == 'add') {
                setState(() {
                    index = 0; // Reset index to 0
                  });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddPage()),
                  
                );
              } else if (value == 'delete') {
                setState(() {
                   index = 0; // Reset index to 0
                 });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DeletePage(

                          onDelete: () {
                          setState(() {}); // Trigger a rebuild of the HomePage
                        },
                  )),
                );
              }
            },
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(
                value: 'add',
                child: Text('Add Card', style: buttonStyle,),
              ),
              const PopupMenuItem(
                value: 'delete',
                child: Text('Delete Card', style: buttonStyle,),
              ),
            ],
          ),
        ],
        ),
        body: 
            _mybox.isNotEmpty && index >= 0 && index < _mybox.length
            ? _buildFlipCard()
            : _buildEmptyCard(),
          
      
  
  );
  }
       
//widget for the box when it has cards inside      
Widget _buildFlipCard() {
          return SingleChildScrollView(
            child: 
              Center(
              child: Column(
                      
                
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      
                        const SizedBox(
                        height: 100,
                  
                      ),
                      FlipCard(
                       
                        front: FrontWidget(word: _mybox.getAt(index)?.word ?? '',
                                            imagePath: _mybox.getAt(index)?.imagePath ?? '',),
                        back:  BackWidget( definition:_mybox.getAt(index)?.definition ?? '',),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(style: ElevatedButton.styleFrom(
                                          backgroundColor: background,
                                        ),onPressed: (){}, child: PreButton(preCard: preCard,)),
                          ElevatedButton(style: ElevatedButton.styleFrom(
                                          backgroundColor: background,
                                        ),
                                          onPressed: (){}, child: NextButton(nextCard: nextCard,)),
                        
                        ],
                      )
                    ],
              
                      )
                      
          ),
          );
      }

//widget for empty box
Widget _buildEmptyCard() {
  return const SingleChildScrollView(
    child: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 100,
            ),
            FlipCard(
              front: FrontWidget(word: '', imagePath: '',),
              back: BackWidget(definition: ''),
            ),
            SizedBox(
              height: 60,
            ),
            Text('No cards available', style: dialogStyle),
          ],
        ),
      ),
  );
}
}