import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade300,
    primary: Colors.grey.shade200,
    secondary: Colors.grey.shade400,
    inversePrimary: Colors.grey.shade500,
  ),
  textTheme: ThemeData.light().textTheme.apply(
        bodyColor: Colors.grey[800],
        displayColor: Colors.black,
      ),
  // Cấu hình AppBar
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.white), // Màu icon AppBar
    titleTextStyle: TextStyle(
      color: Colors.white, // Màu văn bản tiêu đề AppBar
      fontSize: 20,
    ),
  ),
  // Cấu hình cho Button
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.grey.shade400, // Màu nút
    textTheme: ButtonTextTheme.primary, // Màu văn bản nút
  ),
  // Cấu hình cho các icon
  iconTheme: const IconThemeData(
    color: Colors.white, // Màu icon
  ),
);
