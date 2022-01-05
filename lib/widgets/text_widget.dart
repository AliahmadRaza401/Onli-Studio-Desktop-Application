import 'package:flutter/material.dart';

import '../utils/dynamic_sizes.dart';

Widget text(context, text, size, color, {boldText = "",fontFamily ,maxLines = 9}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: dynamicWidth(context, size),
      fontWeight: boldText == "" ? FontWeight.normal : boldText,
      fontFamily : fontFamily,
    ),
    maxLines: maxLines,
  );
}
