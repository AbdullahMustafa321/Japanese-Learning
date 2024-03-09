import 'package:birthday_card/modeols/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/info_category.dart';


class NumberScreen extends StatelessWidget {
   const NumberScreen({super.key});

   final List<Item> numbers= const [
   Item(image: 'assets/images/numbers/number_one.png', enName: 'one', chName: 'ichi',sound: 'sounds/numbers/number_one_sound.mp3'),
   Item(image: 'assets/images/numbers/number_two.png', enName: 'two', chName: 'ni',sound: 'sounds/numbers/number_two_sound.mp3'),
   Item(image: 'assets/images/numbers/number_three.png', enName: 'three', chName: 'san',sound: 'sounds/numbers/number_three_sound.mp3'),
   Item(image: 'assets/images/numbers/number_four.png', enName: 'four', chName: 'shi',sound: 'sounds/numbers/number_four_sound.mp3'),
   Item(image: 'assets/images/numbers/number_five.png', enName: 'five', chName: 'go',sound: 'sounds/numbers/number_five_sound.mp3'),
   Item(image: 'assets/images/numbers/number_six.png', enName: 'six', chName: 'roku',sound: 'sounds/numbers/number_six_sound.mp3'),
   Item(image: 'assets/images/numbers/number_seven.png', enName: 'seven', chName: 'shichi',sound: 'sounds/numbers/number_seven_sound.mp3'),
   Item(image: 'assets/images/numbers/number_eight.png', enName: 'eight', chName: 'hachi',sound: 'sounds/numbers/number_eight_sound.mp3'),
   Item(image: 'assets/images/numbers/number_nine.png', enName: 'nine', chName: 'kyuu',sound: 'sounds/numbers/number_nine_sound.mp3'),
   Item(image: 'assets/images/numbers/number_ten.png', enName: 'ten', chName: 'juu',sound: 'sounds/numbers/number_ten_sound.mp3'),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF4DA),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          'Numbers',
          style: TextStyle(
            fontSize: 20.sp,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff4A322B),
      ),
       body: ListView.builder(
         itemCount: numbers.length,
           itemBuilder: (context,index){
         return Info(item: numbers[index],color: const Color(0xffFA9532));
       })
    );
  }
}
