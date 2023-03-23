import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray80002 = fromHex('#4b4b4b');

  static Color gray80001 = fromHex('#434343');

  static Color green500 = fromHex('#55ab60');

  static Color green30099 = fromHex('#9974ca82');

  static Color deepOrangeA700 = fromHex('#eb1313');

  static Color blueGray900 = fromHex('#263238');

  static Color gray600 = fromHex('#828282');

  static Color gray400 = fromHex('#b3b3b3');

  static Color lime500 = fromHex('#c4e538');

  static Color blueGray100 = fromHex('#d3d3d3');

  static Color gray800 = fromHex('#424242');

  static Color black9000f = fromHex('#0f000000');

  static Color black9000c = fromHex('#0c000000');

  static Color gray10003 = fromHex('#f5f5f5');

  static Color gray10002 = fromHex('#f2fff4');

  static Color bluegray400 = fromHex('#888888');

  static Color gray10001 = fromHex('#f4f4f4');

  static Color lime50 = fromHex('#f9ffda');

  static Color cyan50 = fromHex('#caf5ff');

  static Color gray300D8 = fromHex('#d8dfdfdf');

  static Color blueGray40002 = fromHex('#898989');

  static Color blueGray40001 = fromHex('#868686');

  static Color gray70002 = fromHex('#5c5c5c');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray70003 = fromHex('#5e5e5e');

  static Color gray70001 = fromHex('#646464');

  static Color teal40001 = fromHex('#3f8a9a');

  static Color deepOrange50 = fromHex('#ffebe5');

  static Color gray700C6 = fromHex('#c6575757');

  static Color gray50 = fromHex('#f9f9f9');

  static Color red50 = fromHex('#fff2f0');

  static Color teal400 = fromHex('#3e899a');

  static Color black900 = fromHex('#000000');

  static Color gray50087 = fromHex('#879b9b9b');

  static Color black90063 = fromHex('#63000000');

  static Color gray50001 = fromHex('#8f8f8f');

  static Color gray50003 = fromHex('#989898');

  static Color gray50002 = fromHex('#9b9b9b');

  static Color gray50004 = fromHex('#929292');

  static Color indigoA20033 = fromHex('#334871e3');

  static Color gray700 = fromHex('#616161');

  static Color whiteA7006c = fromHex('#6cffffff');

  static Color gray60002 = fromHex('#737373');

  static Color gray500 = fromHex('#9a9a9a');

  static Color gray60001 = fromHex('#6e6e6e');

  static Color blueGray400 = fromHex('#848fad');

  static Color gray900 = fromHex('#14171e');

  static Color gray90001 = fromHex('#1a1a1a');

  static Color lightBlue50 = fromHex('#eafbff');

  static Color gray60004 = fromHex('#787878');

  static Color green50 = fromHex('#dcffe2');

  static Color gray300 = fromHex('#e8e8e3');

  static Color gray60003 = fromHex('#7b7878');

  static Color gray60006 = fromHex('#7e7e7e');

  static Color gray100 = fromHex('#f2fcf4');

  static Color gray60005 = fromHex('#6f6f6f');

  static Color orange50 = fromHex('#ffedd7');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
