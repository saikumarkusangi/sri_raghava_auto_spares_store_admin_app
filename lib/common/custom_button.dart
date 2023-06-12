import 'package:flutter/material.dart';
import 'package:manage_store/themes/colors.dart';

customButton(text,onTap) {
  return MaterialButton(
    padding: const EdgeInsets.symmetric(
      horizontal: 30,vertical: 10),
    color: primaryColor,
    textColor: white,
    onPressed: onTap,
    child: Text(text,
    style: const TextStyle(
      fontSize: 24,
      
    ),
    ),
  );
}
