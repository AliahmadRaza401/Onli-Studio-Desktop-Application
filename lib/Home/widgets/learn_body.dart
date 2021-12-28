// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:onli_studio/utils/config.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';
import 'package:onli_studio/widgets/text_widget.dart';

class LearnBody extends StatefulWidget {
  const LearnBody({Key? key}) : super(key: key);

  @override
  _LearnBodyState createState() => _LearnBodyState();
}

class _LearnBodyState extends State<LearnBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: dynamicHeight(context, 1),
      width: dynamicWidth(context, 1),
      color: myGreyDark,
      padding: EdgeInsets.symmetric(
        horizontal: dynamicWidth(context, 0.01),
        vertical: dynamicHeight(context, 0.02),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: dynamicWidth(context, 0.03),
                vertical: dynamicHeight(context, 0.04),
              ),
              height: dynamicHeight(context, .43),
              width: dynamicWidth(context, 1),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff0B0B0D),
                    myGreyLight,
                    Color(0xff0B0B0D),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        text(context, "10 Articles", .01, myLightGreyText),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "The Online Protocol",
                                style: TextStyle(
                                  color: myWhite,
                                  fontSize: dynamicWidth(context, 0.015),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "The Fabric of Innovation",
                                style: TextStyle(
                                  color: myLightGreyText,
                                  fontSize: dynamicWidth(context, 0.01),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: dynamicWidth(context, 0.24),
                          alignment: Alignment.topLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Onli is a patented protocol that governs how data is going to be stored, how it is going to be transferred, and how it is going to change or evolve when it moves.",
                                style: TextStyle(
                                  color: Color(0xffF2FAF0),
                                  fontSize: dynamicWidth(context, 0.01),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // 2nd Coantianer
            Container(
              height: dynamicHeight(context, .25),
              width: dynamicWidth(context, 1),
              color: Color(0xffD8D8D8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: dynamicWidth(context, 0.02),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            // horizontal: dynamicWidth(context, 0.03),
                            vertical: dynamicHeight(context, 0.04),
                          ),
                          width: dynamicWidth(context, 0.15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text(
                                context,
                                "Pinned Article & Featured",
                                0.01,
                                Color(0xff333333),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              text(
                                context,
                                "Author Dhryl Anton, Peter Haxel, Michael McFall",
                                0.007,
                                Color(0xffA9A9A9),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: dynamicWidth(context, 0.2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              text(
                                context,
                                "Onli is a protocol. A protocol, in computer science, is a set of rules or procedures that governs the transfer of data between two or more electronic devices. A protocol establishes how the information must be structured and how each party is going to store it, send it and receive it.",
                                0.006,
                                Color(0xff333333),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: dynamicWidth(context, 0.16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              text(
                                context,
                                "Onli is a protocol. A protocol, in computer science, is a set of rules or procedures that governs the transfer of data between two or more electronic devices. A protocol establishes how the information must be structured and how each party is going to store it, send it and receive it.",
                                0.006,
                                Color(0xff333333),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Divider(
                          thickness: 1.5,
                          color: Color(0xffCCCCCC),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(
                                    Icons.menu,
                                    size: dynamicWidth(context, 0.015),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    width: 2,
                                    color: Color(0xffCCCCCC),
                                    child: Text(""),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  text(context, "Download WhitePaper", 0.006,
                                      Color(0xff757171)),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(
                                    Icons.file_download_outlined,
                                    size: dynamicWidth(context, 0.015),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            // Last list view
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                text(
                  context,
                  "Articles on this subject.",
                  .01,
                  Color(0xff6D6D6D),
                ),
              ],
            ),

            Divider(
              color: Color(0xff2E2E2E),
              height: dynamicHeight(context, .02),
              thickness: 2.0,
            ),

            SizedBox(
              height: dynamicHeight(context, 0.19),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  thirdSlider(
                    context,
                    "assets/OExperience.001.png",
                    "About Onli",
                  ),
                  thirdSlider(
                    context,
                    "assets/building.png",
                    "Onli ID",
                  ),
                  thirdSlider(
                    context,
                    "assets/miniScrl1.png",
                    "Tutorial",
                  ),
                  thirdSlider(
                    context,
                    "assets/miniScrl1.png",
                    "Presentation",
                  ),
                  thirdSlider(
                    context,
                    "assets/miniScrl1.png",
                    "Blog",
                  ),
                  thirdSlider(
                    context,
                    "assets/nli.png",
                    "Onli Build",
                  ),
                  thirdSlider(
                    context,
                    "assets/OExperience.001.png",
                    "Onli Build",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget thirdSlider(context, image, title) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: dynamicWidth(context, .002),
      ),
      child: SizedBox(
        height: dynamicHeight(context, 0.2),
        width: dynamicWidth(context, .18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: dynamicHeight(context, 0.12),
              width: dynamicWidth(context, .23),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            Spacer(),
            Row(
              children: [
                text(
                  context,
                  title,
                  .008,
                  Color(0xff6F6F6F),
                  boldText: FontWeight.w600,
                ),
              ],
            ),
            Row(
              children: [
                text(
                  context,
                  "Author Name",
                  .008,
                  Color(0xff313131),
                  boldText: FontWeight.w600,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: myWhite,
                  size: dynamicWidth(context, .006),
                ),
                Icon(
                  Icons.star,
                  color: myWhite,
                  size: dynamicWidth(context, .006),
                ),
                Icon(
                  Icons.star,
                  color: myWhite,
                  size: dynamicWidth(context, .006),
                ),
                Icon(
                  Icons.star,
                  color: myWhite,
                  size: dynamicWidth(context, .006),
                ),
                widthBox(context, .01),
                text(context, "(23)", .006, Color(0xff313131))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
