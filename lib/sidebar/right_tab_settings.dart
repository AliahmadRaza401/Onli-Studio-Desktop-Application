import 'package:flutter/material.dart';
import 'package:onli_studio/utils/config.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';
import 'package:onli_studio/widgets/text_widget.dart';

class RightTabSettings extends StatefulWidget {
  const RightTabSettings({Key? key}) : super(key: key);

  @override
  _RightTabSettingsState createState() => _RightTabSettingsState();
}

class _RightTabSettingsState extends State<RightTabSettings> {
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
            Divider(
              color: myWhite.withOpacity(.4),
              height: dynamicHeight(context, .04),
            ),
            SizedBox(
              height: dynamicHeight(context, .08),
              width: dynamicWidth(context, 1),
              child: Image.asset(
                "assets/p1.png",
                fit: BoxFit.cover,
              ),
            ),
            heightBox(context, .006),
            Row(
              children: [
                text(
                  context,
                  "Profile Img ",
                  .008,
                  const Color(0xff6D6D6D),
                  fontFamily: 'OpenSans',
                ),
                text(
                  context,
                  "1200 x 400",
                  .006,
                  const Color(0xff6D6D6D),
                  fontFamily: 'OpenSans',
                ),
              ],
            ),
            Divider(
              color: myWhite.withOpacity(.4),
              height: dynamicHeight(context, .04),
            ),
            Row(
              children: [
                text(
                  context,
                  "Dhryl Anton",
                  .008,
                  const Color(0xff6D6D6D),
                  boldText: FontWeight.w600,
                  fontFamily: 'OpenSans',
                ),
              ],
            ),
            heightBox(context, .034),
            Padding(
              padding: EdgeInsets.only(
                right: dynamicWidth(context, .01),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text(
                        context,
                        "Member Since",
                        .007,
                        const Color(0xff6D6D6D),
                        boldText: FontWeight.w600,
                        fontFamily: 'OpenSans',
                      ),
                      heightBox(context, .008),
                      text(
                        context,
                        "Company",
                        .007,
                        const Color(0xff6D6D6D),
                        boldText: FontWeight.w600,
                        fontFamily: 'OpenSans',
                      ),
                      heightBox(context, .008),
                      text(
                        context,
                        "Title",
                        .007,
                        const Color(0xff6D6D6D),
                        boldText: FontWeight.w600,
                        fontFamily: 'OpenSans',
                      ),
                      heightBox(context, .008),
                      text(
                        context,
                        "Website",
                        .007,
                        const Color(0xff6D6D6D),
                        boldText: FontWeight.w600,
                        fontFamily: 'OpenSans',
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text(
                        context,
                        "October 2020",
                        .007,
                        const Color(0xff6D6D6D),
                        boldText: FontWeight.w600,
                        fontFamily: 'OpenSans',
                      ),
                      heightBox(context, .008),
                      text(
                        context,
                        "The ONLI Corporation",
                        .007,
                        const Color(0xff6D6D6D),
                        boldText: FontWeight.w600,
                        fontFamily: 'OpenSans',
                      ),
                      heightBox(context, .008),
                      text(
                        context,
                        "Chief Executive Officer",
                        .007,
                        const Color(0xff6D6D6D),
                        boldText: FontWeight.w600,
                        fontFamily: 'OpenSans',
                      ),
                      heightBox(context, .008),
                      text(
                        context,
                        "www.onli.one",
                        .007,
                        const Color(0xff6D6D6D),
                        boldText: FontWeight.w600,
                        fontFamily: 'OpenSans',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: myWhite.withOpacity(.4),
              height: dynamicHeight(context, .04),
            ),
            heightBox(context, .02),
            Row(
              children: [
                text(
                  context,
                  "Statistics",
                  .008,
                  const Color(0xff6D6D6D),
                  boldText: FontWeight.w600,
                  fontFamily: 'OpenSans',
                ),
              ],
            ),
            heightBox(context, .02),
            Padding(
              padding: EdgeInsets.only(
                left: dynamicWidth(context, .064),
                right: dynamicWidth(context, .01),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text(
                        context,
                        "Articles",
                        .007,
                        const Color(0xff6D6D6D),
                        boldText: FontWeight.w600,
                        fontFamily: 'OpenSans',
                      ),
                      heightBox(context, .008),
                      text(
                        context,
                        "Tutorials",
                        .007,
                        const Color(0xff6D6D6D),
                        boldText: FontWeight.w600,
                        fontFamily: 'OpenSans',
                      ),
                      heightBox(context, .008),
                      text(
                        context,
                        "Presentations",
                        .007,
                        const Color(0xff6D6D6D),
                        boldText: FontWeight.w600,
                        fontFamily: 'OpenSans',
                      ),
                      heightBox(context, .008),
                      text(
                        context,
                        "Articles",
                        .007,
                        const Color(0xff6D6D6D),
                        boldText: FontWeight.w600,
                        fontFamily: 'OpenSans',
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text(
                        context,
                        "(10)",
                        .007,
                        const Color(0xff6D6D6D),
                        boldText: FontWeight.w600,
                        fontFamily: 'OpenSans',
                      ),
                      heightBox(context, .008),
                      text(
                        context,
                        "(10)",
                        .007,
                        const Color(0xff6D6D6D),
                        boldText: FontWeight.w600,
                        fontFamily: 'OpenSans',
                      ),
                      heightBox(context, .008),
                      text(
                        context,
                        "(10)",
                        .007,
                        const Color(0xff6D6D6D),
                        boldText: FontWeight.w600,
                        fontFamily: 'OpenSans',
                      ),
                      heightBox(context, .008),
                      text(
                        context,
                        "(5)",
                        .007,
                        const Color(0xff6D6D6D),
                        boldText: FontWeight.w600,
                        fontFamily: 'OpenSans',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: myWhite.withOpacity(.4),
              height: dynamicHeight(context, .04),
            ),
            heightBox(context, .018),
            Row(
              children: [
                text(
                  context,
                  "Advertisement",
                  .008,
                  const Color(0xff6D6D6D),
                  boldText: FontWeight.w600,
                  fontFamily: 'OpenSans',
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
