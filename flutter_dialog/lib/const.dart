import 'package:flutter/material.dart';
import 'dart:math';

class ColorConst {
  static const Color_Font_Black = Color(0xFF222222);
  static const Color_Font_Gray = Color(0xFF999999);
  static const Color_Font_LightGray = Color(0xFF666666);
  static const Color_Font_White = Color(0xFFFFFFFF);
  static const Color_Font_Purple = Color(0xFF4768F3);
  static const Color_Split_Line = Color(0xFFE7E8ED);
  static const Color_BG = Color(0xFFEDEDED);
  static const Color_Font_Orange = Color(0xFFFF6600);
  static const Color_Clear = Colors.transparent;
  static const Color_Font_Red = Color(0xFFCD513E);

  static Color randomColor() {
    return Color.fromRGBO(Random.secure().nextInt(255),
        Random.secure().nextInt(255), Random.secure().nextInt(255), 1);
  }
}
