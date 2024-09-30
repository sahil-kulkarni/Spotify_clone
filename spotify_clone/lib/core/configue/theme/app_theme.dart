
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/configue/theme/AppColors.dart';

class AppTheme{

  static final lightTheme= ThemeData(
    primaryColor: AppColors.primay,
    scaffoldBackgroundColor: AppColors.lightBackground,
    brightness: Brightness.light,
    inputDecorationTheme: InputDecorationTheme(
        filled: true,
        hintStyle: TextStyle(
          color: Color(0xffA7A7A7),
          fontWeight: FontWeight.w500
        ),
        fillColor: Colors.transparent,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.black,
            width: 0.8
          ),
        )
      ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primay,
        textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(30)
        )
      )
    )

  );

  static final darkTheme= ThemeData(
    primaryColor: AppColors.primay,
    scaffoldBackgroundColor: AppColors.darkBackground,
    brightness: Brightness.dark,
    inputDecorationTheme: InputDecorationTheme(
        filled: true,
         hintStyle: TextStyle(
          color: Color(0xffA7A7A7),
          fontWeight: FontWeight.w500
        ),
        fillColor: Colors.transparent,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.white,
            width: 0.8
          ),
        )
      ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primay,
        textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(30)
        )
      )
    )

  );
}