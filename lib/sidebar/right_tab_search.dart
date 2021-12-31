import 'package:flutter/material.dart';
import 'package:onli_studio/utils/config.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';
import 'package:onli_studio/widgets/form_fields.dart';
import 'package:onli_studio/widgets/text_widget.dart';

import '../Home/widgets/discover_widgets.dart';

class RightTabSearch extends StatefulWidget {
  const RightTabSearch({Key? key}) : super(key: key);

  @override
  _RightTabSearchState createState() => _RightTabSearchState();
}

class _RightTabSearchState extends State<RightTabSearch> {
  final search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: noColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: dynamicWidth(context, .008),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: dynamicHeight(context, .024),
              ),
              child: inputTextField(context, "Search", search, prefix: true),
            ),
            Row(
              children: [
                text(
                  context,
                  "Results",
                  .007,
                  const Color(0xff2e2e2e),
                  boldText: FontWeight.w600,
                ),
              ],
            ),
            Divider(
              color: myWhite.withOpacity(.4),
              height: dynamicHeight(context, .014),
            ),
            thirdSlider(
              context,
              "assets/OExperience.png",
              "About Onli",
              check: true,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: dynamicHeight(context, .02),
              ),
              child: thirdSlider(
                context,
                "assets/building.png",
                "Onli ID",
                check: true,
              ),
            ),
            thirdSlider(
              context,
              "assets/OExperience.001.png",
              "Tutorial",
              check: true,
            ),
            heightBox(context, .04),
            Row(
              children: [
                text(
                  context,
                  "Advertisement",
                  .008,
                  const Color(0xff6D6D6D),
                  boldText: FontWeight.w600,
                ),
              ],
            ),
            heightBox(context, .012),
            SizedBox(
              height: dynamicHeight(context, .26),
              width: dynamicWidth(context, 1),
              child: Image.asset(
                "assets/action.png",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
