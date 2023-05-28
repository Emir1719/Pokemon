import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/constants/ui_helper.dart';

class Constants {
  //Nesne üretilmemesi için:
  Constants._();

  static const String title = "Pokedex";

  static TextStyle titleStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(35),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle pokemonNameStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: _calculateFontSize(18),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle pokemonNameInfoStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: _calculateFontSize(18),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle pokemonTypeStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(14),
    );
  }

  static TextStyle pokemonInfoStyle() {
    return const TextStyle(
      color: Colors.black,
      overflow: TextOverflow.ellipsis,
      fontSize: 10,
    );
  }

  static _calculateFontSize(int size) {
    //sp: Telefonun kendi ayarındaki fontsize'a göre ayarlar.
    if (isPortrait()) {
      return size.sp;
    } else {
      return (size * 0.5).sp;
    }
  }

  static calculatePokeballSize() {
    if (isPortrait()) {
      return 0.2.sw;
    } else {
      return 0.3.sh;
    }
  }
}
