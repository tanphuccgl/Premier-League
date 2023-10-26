import 'package:app/theme/colors.dart';
import 'package:app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionTable extends StatelessWidget {
  const SectionTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: XColors.primary3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              text("Pos"),
              text("Club"),
              text("P"),
              text("W"),
              text("D"),
              text("L"),
              text("GD"),
              text("Pts"),
            ],
          ),
        ),
        Container(
          color: XColors.primary1,
          child: Column(
            children: [
              item(),
              item(),
              item(),
              item(),
              item(),
              item(),
              item(),
              item(),
              item(),
              item(),
              item(),
              item(),
              item(),
              item(),
              item(),
              item(),
              item(),
              item(),
              item(),
              item(),
            ],
          ),
        )
      ],
    );
  }

  Widget text(String text) {
    return Expanded(
      flex: 1,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget item() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      height: 54.h,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text("1"),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  XImage.logo1,
                  width: 20.w,
                  height: 20.w,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "LEE",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          text("37"),
          text("28"),
          text("5"),
          text("4"),
          text("62"),
          text("89")
        ],
      ),
    );
  }
}
