import 'package:app/theme/colors.dart';
import 'package:app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionMatchdayLive extends StatelessWidget {
  const SectionMatchdayLive({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            "Matchday Live",
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            "Sunday 2023 May 21",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        item(),
        item(),
        item(),
        SizedBox(
          height: 15,
        ),
        Center(
          child: Container(
            width: 340.w,
            height: 215.h,
            decoration: BoxDecoration(
                color: XColors.primary1,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(XImage.network),
                ),
                boxShadow: [
                  BoxShadow(
                    color: XColors.primary1,
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  )
                ]),
          ),
        )
      ],
    );
  }

  Widget item() {
    return Container(
      height: 55.h,
      padding: EdgeInsets.only(left: 60, right: 15),
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
            width: 77.w,
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
