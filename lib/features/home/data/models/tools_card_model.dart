import 'package:flutter/material.dart';

class ToolsCardModel {
  final IconData icon;
  final String title;
  final String description;
  final void Function() onTap;

  ToolsCardModel(
      {required this.icon,
      required this.title,
      required this.description,
      required this.onTap});
}
