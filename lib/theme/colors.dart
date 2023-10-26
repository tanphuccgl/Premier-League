import 'package:app/utils/color_utils.dart';
import 'package:flutter/material.dart';

class XColors {
  // https://gist.github.com/lopspower/03fb1cc0ac9f32ef38f4
  static final MaterialColor primaryColors =
      ColorUtility.generateMaterialColor(primary);

  static const primary = Color(0xffFF2882);

  static const primary1 = Color(0xff37003C);
  static final primary2 = Color(0xFF37003c).withOpacity(0.83);
  static const primary3 = Color(0xffCABFBF);
  static const primary4 = Color(0xffF6E9E9);
  static const primary5 = Color(0xffD5D4D4);
}
