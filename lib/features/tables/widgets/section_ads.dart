import 'package:app/utils/images.dart';
import 'package:flutter/material.dart';

class SectionAds extends StatelessWidget {
  const SectionAds({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Image.asset(
          XImage.logo4,
          fit: BoxFit.fill,
        ));
  }
}
