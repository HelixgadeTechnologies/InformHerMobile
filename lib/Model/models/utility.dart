import 'package:flutter/material.dart';


ThemeData lightTheme = ThemeData.light().copyWith(backgroundColor:const Color(0xffF2F2F2) ,elevatedButtonTheme: ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>( Color(0xff7772D3)),
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),


        )

    ),
), ) );