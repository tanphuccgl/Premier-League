import 'package:app/theme/colors.dart';
import 'package:app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionTile extends StatelessWidget {
  const SectionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tables",
                style: TextStyle(
                  color: XColors.primary2,
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Image.asset(XImage.logo2),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 64.h,
          width: double.infinity,
          color: XColors.primary,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "Premier League",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
