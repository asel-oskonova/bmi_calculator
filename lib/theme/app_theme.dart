import 'package:flutter/material.dart';

final darkTheme = ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Colors.white,
          primary: const Color(0xffFF0F65),
          background: const Color(0xff211834),
          surface: const Color(0xff0A001F),
          onSurface: Colors.white,
        ),
        useMaterial3: true,
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            backgroundColor: const Color(0xff5C5B5B),
            foregroundColor: Colors.white,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor:  Color(0xff211834),
          titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500)
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffFF0F65),
            foregroundColor: Colors.white,
            fixedSize: const Size(double.maxFinite, 60),
            textStyle: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),),
          ),
        ),

      );

      final lightTheme = ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          seedColor: const Color(0xffFF0F65),
        ),
        useMaterial3: true,
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            backgroundColor:  const Color(0xffFF0F65),
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor:  Color(0xff211834),
          titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color:  Color(0xff211834),)
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffFF0F65),
            foregroundColor: Colors.white,
            fixedSize: const Size(double.maxFinite, 60),
            textStyle: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),),
          ),
        ),

      );