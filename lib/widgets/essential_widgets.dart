import 'package:flutter/material.dart';

import '../utils/config.dart';
import '../utils/dynamic_sizes.dart';

bar(
  context, {
  function = "",
  function1 = "",
}) {
  return AppBar(
    backgroundColor: myBlack,
    title: Center(
      child: Image.asset(
        "assets/logo.png",
        width: dynamicWidth(context, 0.2),
      ),
    ),
    leading: GestureDetector(
      onTap: function == "" ? () {} : function,
      child: Image.asset(
        "assets/menu.png",
        scale: 30,
      ),
    ),
    centerTitle: true,
    actions: [
      InkWell(
        onTap: function1 == "" ? () {} : function1,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: dynamicWidth(context, .02),
          ),
          child: const Icon(Icons.shopping_cart_outlined),
        ),
      ),
      widthBox(context, 0.01)
    ],
    bottom: PreferredSize(
        child: Container(
          color: myWhite.withOpacity(0.5),
          height: 1,
        ),
        preferredSize: const Size.fromHeight(4.0)),
  );
}
