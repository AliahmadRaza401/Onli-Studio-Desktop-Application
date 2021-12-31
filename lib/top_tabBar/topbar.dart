import 'package:flutter/material.dart';
import 'package:onli_studio/utils/config.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: dynamicHeight(context, .08),
      color: myGreyDark,
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(
        top: dynamicHeight(context, .03),
        left: dynamicWidth(context, .009),
      ),
      child: Container(
        margin: EdgeInsets.only(left: dynamicWidth(context, .07)),
        width: dynamicWidth(context, .4),
        // color: Colors.yellow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            title(context, "Discover", myWhite),
            title(context, "Discover", myGreyText),
            title(context, "Discover", myGreyText),
            title(context, "Discover", myGreyText),
            title(context, "Discover", myGreyText),
          ],
        ),
      ),
    );
  }

  Widget title(BuildContext context, text, color) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: dynamicHeight(context, 0.02),
      ),
    );
  }
}
