import 'package:flutter/material.dart';

Widget customButtom(String? message, Color? color){
  return Container(
    padding: const EdgeInsets.all(10),
    color: color,

    child : Text(message!)
  );
}