import 'package:flutter/material.dart';

abstract class ButtonCircleStyle {
  static final style = ButtonStyle(
    backgroundColor: const MaterialStatePropertyAll(Color(0xFFF5F5F9)),
    foregroundColor: const MaterialStatePropertyAll(Colors.black),
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
    ),
    overlayColor: const MaterialStatePropertyAll(
      Color(0xFF196EEE),
    ),
    elevation: const MaterialStatePropertyAll(0),
  );
}
