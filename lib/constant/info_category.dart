import 'package:birthday_card/modeols/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Info extends StatelessWidget {
   Info({super.key,required this.item,required this.color});
  Item  item;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      color: color,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFFEE5), child: Image.asset(item.image!)),
          Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.chName,
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                  ),
                ),
                Text(
                  item.enName,
                  style: TextStyle(
                    fontSize: 20.sp,
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
