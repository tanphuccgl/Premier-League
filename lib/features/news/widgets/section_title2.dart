import 'package:app/theme/colors.dart';
import 'package:app/utils/images.dart';
import 'package:flutter/material.dart';

class SectionTile2 extends StatelessWidget {
  const SectionTile2({super.key});

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
                "News",
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
      ],
    );
  }
}
