import 'package:birthday_card/modeols/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/info_category.dart';


class ColorsScreen extends StatelessWidget {
   ColorsScreen({super.key});
List<Item> colors=[
  Item(image: 'assets/images/colors/color_black.png', enName: 'Black', chName: 'Kuro', sound: 'sounds/colors/black.wav'),
  Item(image: 'assets/images/colors/color_brown.png', enName: 'Brown', chName: 'Cha', sound: 'sounds/colors/brown.wav'),
  Item(image: 'assets/images/colors/color_dusty_yellow.png', enName: 'Dusty Yellow', chName: 'Dasutiierō', sound: 'sounds/colors/dusty yellow.wav'),
  Item(image: 'assets/images/colors/color_gray.png', enName: 'Grey', chName: 'Hai', sound: 'sounds/colors/gray.wav'),
  Item(image: 'assets/images/colors/color_green.png', enName: 'Green', chName: 'Midori', sound: 'sounds/colors/green.wav'),
  Item(image: 'assets/images/colors/color_red.png', enName: 'Red', chName: 'Aka', sound: 'sounds/colors/red.wav'),
  Item(image: 'assets/images/colors/color_white.png', enName: 'White', chName: 'Shiro', sound: 'sounds/colors/white.wav'),
  Item(image: 'assets/images/colors/yellow.png', enName: 'Yellow', chName: 'kiiro', sound: 'sounds/colors/yellow.wav'),

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF4DA),
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        title: Text(
          'Colors',
          style: TextStyle(
            fontSize: 20.sp,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff4A322B),
      ),
      body: ListView.builder(
        itemCount: colors.length,
          itemBuilder: (context,index){
        return Info(item: colors[index], color: Color(0xff7E3FA3),);
      }),
    );
  }
}
