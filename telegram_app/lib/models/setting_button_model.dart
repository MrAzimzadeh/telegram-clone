import 'package:flutter/material.dart';

class SettingButtonModel {
  final Widget icon;
  final String title;
  final bool suffix;

  SettingButtonModel(
      {required this.icon, required this.title, this.suffix = false});
}
