import 'package:audioplayers/audioplayers.dart';
import 'package:birthday_card/modeols/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhrasesCategory extends StatelessWidget {
   PhrasesCategory({super.key,required this.item});
  Item item;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      color: const Color(0xff48A5CC),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.chName,
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.white,
                  ),
                ),
                Text(
                  item.enName,
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          const Spacer(flex: 1),
          Padding(
            padding: EdgeInsets.only(right: 18.w),
            child: IconButton(
              onPressed: ()  {
                item.PlaySound();
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 25.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
