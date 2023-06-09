import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UI {
  static double titleHeight() {
    return isPortrait() ? 0.10.sh : 0.10.sw;
  }

  static EdgeInsets defaultPadding() {
    if (isPortrait()) {
      return EdgeInsets.all(12.h);
    } else {
      return EdgeInsets.all(6.w);
    }
  }

  static final Map<String, Color> _typeColorMap = {
    'Grass': Colors.green,
    'Fire': Colors.redAccent,
    'Water': Colors.blue,
    'Electric': Colors.orange,
    'Rock': Colors.grey,
    'Ground': Colors.brown,
    'Bug': Colors.lightGreenAccent.shade700,
    'Psychic': Colors.indigo,
    'Fighting': Colors.orange,
    'Ghost': Colors.deepPurple,
    'Normal': Colors.black26,
    'Poison': Colors.deepPurpleAccent
  };

  static Color getColorFromType(String type) {
    if (_typeColorMap.containsKey(type)) {
      return _typeColorMap[type] ?? Colors.pink.shade300;
    } else {
      return Colors.pink.shade300;
    }
  }
}

bool isPortrait() {
  return ScreenUtil().orientation == Orientation.portrait;
}
