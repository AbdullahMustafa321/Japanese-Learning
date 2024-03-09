import 'package:birthday_card/constant/phrases_category.dart';
import 'package:birthday_card/modeols/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class PhrasesScreen extends StatelessWidget {
  PhrasesScreen({super.key});

  List<Item> phrases = [
    Item(enName: 'Are you coming?', chName: 'Kimasu ka?', sound: 'sounds/phrases/are_you_coming.wav'),
    Item(enName: 'Don\'t forget to subscribe', chName: 'Kōdoku suru koto o wasurenaide kudasai', sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    Item(enName: 'How are you feeling', chName: 'Go kibun wa ikagadesu ka', sound: 'sounds/phrases/how_are_you_feeling.wav'),
    Item(enName: 'I love anime', chName: 'Watashi wa anime ga daisukidesu', sound: 'sounds/phrases/i_love_anime.wav'),
    Item(enName: 'I love programming', chName: 'Puroguramingu ga daisukidesu', sound: 'sounds/phrases/i_love_programming.wav'),
    Item(enName: 'Programming is easy', chName: 'Puroguramingu wa kantandesu', sound: 'sounds/phrases/programming_is_easy.wav'),
    Item(enName: 'What is your name?', chName: 'Anata no namae wa nanidesu ka?', sound: 'sounds/phrases/what_is_your_name.wav'),
    Item(enName: 'Where are you going?', chName: 'Doko ni iku no?', sound: 'sounds/phrases/where_are_you_going.wav'),
    Item(enName: 'Yes im coming', chName: 'Hai, kimasu', sound: 'sounds/phrases/yes_im_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF4DA),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Phrases',
          style: TextStyle(
            fontSize: 20.sp,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff4A322B),
      ),
      body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return PhrasesCategory(item: phrases[index]);
          }),
    );
  }
}
