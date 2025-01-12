import 'package:flutter/material.dart';

class MainDrawer {
  final IconData icon;
  final String text;
  final Widget? GestureDetector;
  final VoidCallback? onTap;

  MainDrawer(
      {required this.icon,
      required this.text,
     this.onTap,
      this.GestureDetector});
}
