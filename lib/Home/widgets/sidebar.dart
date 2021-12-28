import 'package:flutter/material.dart';
import 'package:onli_studio/utils/config.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: dynamicHeight(context, .08),
          color: myGreyDark,
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(
            top: dynamicHeight(context, .03),
            left: dynamicWidth(context, .009),
          ),
          child: Text(
            "Onli Studio",
            style: TextStyle(
              color: myBlueTitle,
              fontSize: dynamicWidth(context, 0.01),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        heading(context, "Onli", ""),
        heading(context, "Onli iD", ""),
        heading(context, "Onli Build", ""),
        heading(context, "Onli Cloud", ""),
        heading(context, "Onli One", ""),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: dynamicWidth(context, .01),
          ),
          child: Divider(
            color: myGreyDark,
            thickness: 2,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        heading(context, "Collections", ""),
        SizedBox(
          height: 10,
        ),
        heading(context, "Protocol Containers", "(13)"),
        heading(context, "Infrastructure", "(20)"),
        heading(context, "Platform", "(20)"),
        heading(context, "Tolls", "(20)"),
        heading(context, "Cloud OS", "(20)"),
      ],
    );
  }

  Widget heading(BuildContext context, title, no) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: dynamicHeight(context, .03),
        vertical: dynamicHeight(context, .02),
      ),
      alignment: Alignment.topLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: myWhite,
              fontSize: dynamicHeight(context, .015),
            ),
          ),
          Text(
            no,
            style: TextStyle(
              color: myWhite,
              fontSize: dynamicHeight(context, .015),
            ),
          ),
        ],
      ),
    );
  }
}
