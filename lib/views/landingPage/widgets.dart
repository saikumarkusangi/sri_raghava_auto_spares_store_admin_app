import 'package:flutter/material.dart';
import 'package:manage_store/themes/colors.dart';

button(icon,text,onTap) {
  return MaterialButton(
    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
    onPressed: onTap,
    child:  ListTile(
      tileColor: primaryColor,
      leading: Icon(
         icon,
         color: Colors.white,
        size: 38,
      ),
      title: Text(text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24
      ),),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
        size: 22,),
    ),
  );
}
