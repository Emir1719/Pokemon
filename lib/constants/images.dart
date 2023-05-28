import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/constants/constants.dart';
import 'package:pokemon/constants/ui_helper.dart';

class ProjectImages {
  //final bool _isPortrait = ScreenUtil().orientation == Orientation.portrait;

  static final appbar = Image.asset(
    "images/pokeball.png",
    width: isPortrait() ? 0.2.sh : 0.2.sw,
    fit: BoxFit.fitWidth,
    //height: 200.h,
  );

  static final pokeball = Image.asset(
    "images/pokeball.png",
    width: Constants.calculatePokeballSize(),
    height: Constants.calculatePokeballSize(),
    fit: BoxFit.fitHeight,
  );
}
