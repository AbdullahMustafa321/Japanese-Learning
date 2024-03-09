import 'package:birthday_card/constant/category.dart';
import 'package:birthday_card/view/screens/colors_screen.dart';
import 'package:birthday_card/view/screens/phrases_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'family_member_screen.dart';
import 'number_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF4DA),
      appBar: AppBar(
        title: Text(
          'toku',
          style: TextStyle(
            fontSize: 20.sp,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff4A322B),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: const Color(0xffFA9532),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NumberScreen(),
                  ));
            },
          ),
          Category(
            text: 'Family Members',
            color: const Color(0xff538033),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FamilyMembersScreen(),
                  ));
            },
          ),
          Category(text: 'Colors', color: const Color(0xff7E3FA3),onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ColorsScreen(),
                ));
          },),
          Category(text: 'Phrases', color: const Color(0xff48A5CC),onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PhrasesScreen(),
                ));
          },),
        ],
      ),
    );
  }
}
