import 'package:hive/hive.dart';
part 'card_model.g.dart';

@HiveType(typeId: 0)
class FlashCard {
  @HiveField(0)
  final String word;

  @HiveField(1)
  final String definition;

  @HiveField(2)
  final String imagePath;
  FlashCard({
    required this.word, 
    required this.definition,
    required this.imagePath
          });
}