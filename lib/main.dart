import 'package:flutter/material.dart';
import 'package:pubg_gun_info/screen/home_screen.dart';
import 'package:pubg_gun_info/screen/main_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        fontFamily: "notsHans"
    ),
    debugShowCheckedModeBanner: false,
    home: MainScreen(),
  ));
}

