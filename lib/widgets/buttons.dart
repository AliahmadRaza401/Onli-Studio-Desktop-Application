import 'package:flutter/material.dart';

import '../utils/config.dart';
import '../utils/dynamic_sizes.dart';

Widget coloredButton(context, text, color,
    {function = "", width = "", fontSize = 0.05}) {
  return GestureDetector(
    onTap: function == "" ? () {} : function,
    child: Container(
      width: width == "" ? dynamicWidth(context, 1) : width,
      height: dynamicHeight(context, .056),
      decoration: color == Colors.transparent
          ? BoxDecoration(
              color: color, border: Border.all(width: 1, color: myWhite))
          : BoxDecoration(
              color: color,
            ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: myWhite,
            fontWeight: FontWeight.bold,
            fontSize: dynamicWidth(context, fontSize),
          ),
        ),
      ),
    ),
  );
}
