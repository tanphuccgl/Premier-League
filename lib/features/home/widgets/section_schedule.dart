import 'package:app/theme/colors.dart';
import 'package:app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionSchedule extends StatelessWidget {
  const SectionSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      color: XColors.primary1,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Match week 37",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 328.w,
          height: 18.h,
          padding: EdgeInsets.only(left: 15),
          color: XColors.primary,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Sat 2023 May 20",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 8,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        item(),
        Divider(
          color: Colors.white,
          height: 2,
        ),
        item(),
        Divider(
          color: Colors.white,
          height: 2,
        ),
        item(),
        Divider(
          color: Colors.white,
          height: 2,
        ),
        item(),
        Divider(
          color: Colors.white,
          height: 2,
        ),
        item(),
        Divider(
          color: Colors.white,
          height: 2,
        ),
        item(),
        Container(
          width: 328.w,
          height: 18.h,
          padding: EdgeInsets.only(left: 15),
          color: XColors.primary,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Sat 2023 May 20",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 8,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        item2(),
        Divider(
          color: Colors.white,
          height: 2,
        ),
        item2(),
        Divider(
          color: Colors.white,
          height: 2,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "All FIxtures",
              style: TextStyle(
                color: Colors.white,
                fontSize: 7,
                fontWeight: FontWeight.w400,
              ),
            ),
            Icon(
              Icons.arrow_forward_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 15,
            )
          ],
        )
      ]),
    );
  }

  Widget item() {
    return Container(
      height: 55.h,
      padding: EdgeInsets.only(left: 50, right: 15),
      margin: EdgeInsets.symmetric(vertical: 5),
      width: ScreenUtil().screenWidth,
      color: XColors.primary1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "MCI",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Image.asset(
            XImage.logo1,
            width: 20.w,
            height: 20.w,
          ),
          Container(
            width: 50.w,
            height: 23.h,
            margin: EdgeInsets.symmetric(horizontal: 50),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                " 1  |  3 ",
                style: TextStyle(
                  color: XColors.primary,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
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
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_outlined,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget item2() {
    return Container(
      height: 55.h,
      padding: EdgeInsets.only(left: 50, right: 15),
      margin: EdgeInsets.symmetric(vertical: 5),
      width: ScreenUtil().screenWidth,
      color: XColors.primary1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "MCI",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Image.asset(
            XImage.logo1,
            width: 20.w,
            height: 20.w,
          ),
          Container(
            width: 75.w,
            height: 31.h,
            margin: EdgeInsets.symmetric(horizontal: 35),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.white, width: 1),
            ),
            child: Center(
              child: Text(
                "2:00 AM",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
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
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_outlined,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
