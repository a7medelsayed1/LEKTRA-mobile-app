import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray5000 = fromHex('#00fff9f9');
  static Color red600 = fromHex('#dd2e44');
  static Color deepOrange20044 = fromHex('#44ffbe9d');
  static Color gray400C9 = fromHex('#c9c4c4c4');

  static Color blueGray5007f = fromHex('#7f546f92');

  static Color black900B2 = fromHex('#b2000000');

  static Color blueGray10001 = fromHex('#d7d0d0');

  static Color gray80001 = fromHex('#3f3e3e');

  static Color black9003f = fromHex('#3f000000');

  static Color indigo900Ed = fromHex('#ed292f79');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color black90000 = fromHex('#00000000');

  static Color black900 = fromHex('#000000');

  static Color yellow700 = fromHex('#ffbb38');

  static Color gray50001 = fromHex('#999595');

  static Color gray20001 = fromHex('#e7e7e7');

  static Color gray50003 = fromHex('#9d9595');

  static Color gray50002 = fromHex('#a59797');

  static Color gray50005 = fromHex('#9b9898');

  static Color gray50004 = fromHex('#979191');

  static Color indigo900E0 = fromHex('#e0292f79');

  static Color black90026 = fromHex('#26000000');

  static Color gray600 = fromHex('#808080');

  static Color gray700 = fromHex('#675f5f');

  static Color gray400 = fromHex('#bfb7b7');

  static Color gray60002 = fromHex('#848282');

  static Color gray500 = fromHex('#ac9d9d');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color gray60001 = fromHex('#818080');

  static Color blueGray400 = fromHex('#8b8787');

  static Color gray800 = fromHex('#494444');

  static Color gray500C6 = fromHex('#c6929393');

  static Color indigo900C9 = fromHex('#c9292f79');

  static Color gray200 = fromHex('#efeaea');

  static Color black9004f = fromHex('#4f010101');

  static Color gray300 = fromHex('#e1e1e1');

  static Color gray30000 = fromHex('#00e1e1e1');

  static Color indigoA10096 = fromHex('#968ba8f1');

  static Color bluegray400 = fromHex('#888888');

  static Color indigo900 = fromHex('#292f79');

  static Color indigo700 = fromHex('#414586');

  static Color whiteA700 = fromHex('#ffffff');

  static Color indigo600 = fromHex('#4c5191');

  static Color gray70001 = fromHex('#565858');
  static Color gray900 = fromHex('#131414');

  static Color indigo600Dd = fromHex('#dd4c5191');

  static Color indigoA700 = fromHex('#000aff');

  static Color gray70002 = fromHex('#696969');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
