// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onli_studio/utils/config.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';
import 'package:onli_studio/widgets/text_widget.dart';

class DiscoverBody extends StatelessWidget {
  const DiscoverBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      color: myGreyDark,
      child: SingleChildScrollView(
        child: Column(
          children: [
            //1st slider
            SizedBox(
              height: dynamicHeight(context, 0.32),
              width: dynamicWidth(context, .7),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  mainSliderBox(
                    context,
                    "assets/mainScrl1.png",
                  ),
                  mainSliderBox(
                    context,
                    "assets/mianScrl2.png",
                  ),
                  mainSliderBox(
                    context,
                    "assets/mianScrl3.png",
                  ),
                ],
              ),
            ),

            //2nd slider
            SizedBox(
              height: dynamicHeight(context, 0.13),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  secondSlider(
                    context,
                    "assets/miniScrl1.png",
                    Color(0xff585855),
                    Color(0xff585855),
                  ),
                  secondSlider(
                    context,
                    "assets/miniScrl2.png",
                    Color(0xffF4C19B),
                    Color(0xffEAEADC),
                  ),
                  secondSlider(
                    context,
                    "assets/miniScrl3.png",
                    Color(0xff6D97EA),
                    Color(0xff6D6D6D),
                  ),
                  secondSlider(
                    context,
                    "assets/miniScrl1.png",
                    Color(0xff585855),
                    Color(0xff585855),
                  ),
                  secondSlider(
                    context,
                    "assets/miniScrl2.png",
                    Color(0xffF4C19B),
                    Color(0xffEAEADC),
                  ),
                  secondSlider(
                    context,
                    "assets/miniScrl3.png",
                    Color(0xff6D97EA),
                    Color(0xff6D6D6D),
                  ),
                ],
              ),
            ),

            // 3rd Slider

            heightBox(context, .02),
            Row(
              children: [
                text(
                  context,
                  "Articles",
                  .014,
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

            // 4th Slider

            heightBox(context, .02),
            Row(
              children: [
                text(
                  context,
                  "Community",
                  .014,
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
              height: dynamicHeight(context, 0.17),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  fourthSlider(
                    context,
                    "assets/OExperience.001.png",
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
    );
  }
}

Widget mainSliderBox(context, image) {
  return Center(
    child: Container(
      height: dynamicHeight(context, 0.32),
      width: dynamicWidth(context, .7),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: dynamicWidth(context, .012),
          top: dynamicHeight(context, .2),
        ),
        child: Column(
          children: [
            Row(
              children: [
                text(
                  context,
                  "The Onli Presentation",
                  .014,
                  myDiscoverHeading,
                  boldText: FontWeight.w500,
                ),
              ],
            ),
            Row(
              children: [
                text(
                  context,
                  "The Fabric of Innovation",
                  .012,
                  mySubDiscoverHeading,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget secondSlider(context, image, headingColor, subHeadingColor) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: dynamicWidth(context, .002),
    ),
    child: Container(
      height: dynamicHeight(context, 0.13),
      width: dynamicWidth(context, .23),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: dynamicWidth(context, .004),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                text(
                  context,
                  "It’s Simpler Than You Think",
                  .01,
                  headingColor,
                  boldText: FontWeight.w600,
                ),
              ],
            ),
            Row(
              children: [
                text(
                  context,
                  "Presentation",
                  .008,
                  subHeadingColor,
                  boldText: FontWeight.w500,
                ),
              ],
            ),
          ],
        ),
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

Widget fourthSlider(context, image) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: dynamicWidth(context, .002),
    ),
    child: SizedBox(
      height: dynamicHeight(context, 0.2),
      width: dynamicWidth(context, .14),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: dynamicHeight(context, 0.12),
            width: dynamicWidth(context, .14),
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
                "title",
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
        ],
      ),
    ),
  );
}
