import 'package:app/theme/colors.dart';
import 'package:app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionFilter extends StatelessWidget {
  const SectionFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: ScreenUtil().screenWidth / 2 - 1,
          height: 64.h,
          color: XColors.primary,
          padding: EdgeInsets.only(left: 10, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Season",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "2022/23",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Image.asset(
                XImage.icon1,
                width: 8,
                height: 8,
              )
            ],
          ),
        ),
        Container(
          width: ScreenUtil().screenWidth / 2 - 1,
          height: 64.h,
          color: XColors.primary,
          padding: EdgeInsets.only(left: 10, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sort by",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Position",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Image.asset(
                XImage.icon1,
                width: 8,
                height: 8,
              )
            ],
          ),
        )
      ],
    );
  }
}
