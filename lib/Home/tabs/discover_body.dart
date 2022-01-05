import 'package:flutter/material.dart';
import 'package:onli_studio/utils/config.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';
import 'package:onli_studio/widgets/text_widget.dart';

import '../widgets/discover_widgets.dart';

class DiscoverBody extends StatelessWidget {
  const DiscoverBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
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
                    "assets/mainScrl3.png",
                  ),
                ],
              ),
            ),

            //2nd slider
            SizedBox(
              height: dynamicHeight(context, 0.12),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  secondSlider(
                    context,
                    "assets/miniScrl1.png",
                    const Color(0xff585855),
                    const Color(0xff585855),
                  ),
                  secondSlider(
                    context,
                    "assets/miniScrl2.png",
                    const Color(0xffF4C19B),
                    const Color(0xffEAEADC),
                  ),
                  secondSlider(
                    context,
                    "assets/miniScrl3.png",
                    const Color(0xff6D97EA),
                    const Color(0xff6D6D6D),
                  ),
                  secondSlider(
                    context,
                    "assets/miniScrl1.png",
                    const Color(0xff585855),
                    const Color(0xff585855),
                  ),
                  secondSlider(
                    context,
                    "assets/miniScrl2.png",
                    const Color(0xffF4C19B),
                    const Color(0xffEAEADC),
                  ),
                  secondSlider(
                    context,
                    "assets/miniScrl3.png",
                    const Color(0xff6D97EA),
                    const Color(0xff6D6D6D),
                  ),
                ],
              ),
            ),

            // 3rd Slider

            heightBox(context, .021),
            Row(
              children: [
                text(
                  context,
                  "Articles",
                  .014,
                  const Color(0xff6D6D6D),
                ),
              ],
            ),

            Divider(
              color: const Color(0xff2E2E2E),
              height: dynamicHeight(context, .018),
              thickness: 2.0,
            ),

            SizedBox(
              height: dynamicHeight(context, 0.17),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  thirdSlider(
                    context,
                    "assets/OExperience.png",
                    "About Onli",
                  ),
                  thirdSlider(
                    context,
                    "assets/building.png",
                    "Onli ID",
                  ),
                  thirdSlider(
                    context,
                    "assets/OExperience.001.png",
                    "Tutorial",
                  ),
                  thirdSlider(
                    context,
                    "assets/mianScrl2.png",
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

            heightBox(context, .021),
            Row(
              children: [
                text(
                  context,
                  "Community",
                  .014,
                  const Color(0xff6D6D6D),
                ),
              ],
            ),

            Divider(
              color: const Color(0xff2E2E2E),
              height: dynamicHeight(context, .02),
              thickness: 2.0,
            ),

            SizedBox(
              height: dynamicHeight(context, 0.15),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  fourthSlider(
                    context,
                    "assets/p1.png",
                  ),
                  fourthSlider(
                    context,
                    "assets/p2.png",
                  ),
                  fourthSlider(
                    context,
                    "assets/p3.png",
                  ),
                  fourthSlider(
                    context,
                    "assets/p1.png",
                  ),
                  fourthSlider(
                    context,
                    "assets/p2.png",
                  ),
                  fourthSlider(
                    context,
                    "assets/p3.png",
                  ),
                  fourthSlider(
                    context,
                    "assets/p1.png",
                  ),
                  fourthSlider(
                    context,
                    "assets/p2.png",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
