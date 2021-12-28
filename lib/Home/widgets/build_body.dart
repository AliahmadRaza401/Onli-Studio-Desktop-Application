import 'package:flutter/material.dart';
import 'package:onli_studio/utils/config.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';

class BuildBody extends StatefulWidget {
  const BuildBody({Key? key}) : super(key: key);

  @override
  _BuildBodyState createState() => _BuildBodyState();
}

class _BuildBodyState extends State<BuildBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: dynamicHeight(context, 0.4),
      width: dynamicWidth(context, .7),
      color: myGreyDark,
      padding: EdgeInsets.symmetric(
        vertical: dynamicHeight(context, .1),
        horizontal: dynamicWidth(context, .1),
      ),
      child: Image.asset(
        "assets/graph.png",
        fit: BoxFit.fill,
      ),
    );
  }
}
