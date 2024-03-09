import 'package:birthday_card/modeols/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/info_category.dart';


class FamilyMembersScreen extends StatelessWidget {
   FamilyMembersScreen({super.key});
List<Item> member =[
  Item(image: 'assets/images/family_members/family_father.png', enName: 'Father', chName: 'Chichioya', sound: 'sounds/family_members/father.wav'),
  Item(image: 'assets/images/family_members/family_mother.png', enName: 'Mother', chName: 'Hahaoya', sound: 'sounds/family_members/mother.wav'),
  Item(image: 'assets/images/family_members/family_daughter.png', enName: 'Daughter', chName: 'Musume', sound: 'sounds/family_members/daughter.wav'),
  Item(image: 'assets/images/family_members/family_grandfather.png', enName: 'Grand Father', chName: 'Ojisan', sound: 'sounds/family_members/grand father.wav'),
  Item(image: 'assets/images/family_members/family_grandmother.png', enName: 'Grand Mother', chName: 'Sobo', sound: 'sounds/family_members/grand mother.wav'),
  Item(image: 'assets/images/family_members/family_older_brother.png', enName: 'Older Brother', chName: 'Nisan', sound: 'sounds/family_members/older bother.wav'),
  Item(image: 'assets/images/family_members/family_older_sister.png', enName: 'Older Sister', chName: 'Ane', sound: 'sounds/family_members/older sister.wav'),
  Item(image: 'assets/images/family_members/family_son.png', enName: 'Son', chName: 'Musuku', sound: 'sounds/family_members/son.wav'),
  Item(image: 'assets/images/family_members/family_younger_brother.png', enName: 'Younger Brother', chName: 'Otōto', sound: 'sounds/family_members/younger brother.wav'),
  Item(image: 'assets/images/family_members/family_younger_sister.png', enName: 'Younger Sister', chName: 'Ani', sound: 'assets/sounds/family_members/younger sister.wav'),
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
          'Family Member',
          style: TextStyle(
            fontSize: 20.sp,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff4A322B),
      ),
      body: ListView.builder(
        itemCount: member.length,
          itemBuilder: (context,index){
        return Info(item: member[index],color:Color(0xff538033));
      }),
    );
  }
}
