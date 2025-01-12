import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeMode {
  Color col;
  String? title;
  String? time;
  String? subtitle;
  String complete;
  String? text;

  HomeMode(
      {required this.col,
      this.title,
      this.time,
      this.subtitle,
      required this.complete,
      this.text});
}
