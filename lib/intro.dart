import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:onli_studio/utils/app_routes.dart';
import 'package:onli_studio/utils/config.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';
import 'package:onli_studio/widgets/text_widget.dart';

import 'login.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: dynamicWidth(context, 1),
        height: dynamicHeight(context, 1),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/bg.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: dynamicWidth(context, .04),
                left: dynamicWidth(context, .04),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/Logo.png",
                        scale: 8.0,
                      ),
                      heightBox(context, .02),
                      text(
                        context,
                        DateFormat.yMMMMEEEEd()
                            .format(DateTime.now())
                            .toString(),
                        .008,
                        myWhite,
                        boldText: FontWeight.w300,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: dynamicHeight(context, .1),
                right: dynamicWidth(context, .12),
              ),
              child: InkWell(
                onTap: () {
                  push(
                    context,
                    const Login(),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: dynamicWidth(context, .2),
                      height: dynamicHeight(context, .14),
                      decoration: BoxDecoration(
                        color: myBlack.withOpacity(.5),
                        borderRadius: BorderRadius.circular(
                          dynamicWidth(context, .004),
                        ),
                      ),
                      padding: EdgeInsets.all(
                        dynamicHeight(context, .012),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text(
                            context,
                            "ONLI CLOUD",
                            .008,
                            const Color(0xff8E8E93),
                            boldText: FontWeight.w300,
                          ),
                          text(
                            context,
                            "Log in with",
                            .01,
                            const Color(0xffE1C79B),
                            boldText: FontWeight.w300,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              iconBox(
                                context,
                                0xff3B5998,
                                "assets/fb.png",
                              ),
                              iconBox(
                                context,
                                0xffffffff,
                                "assets/google.png",
                              ),
                              iconBox(
                                context,
                                0xff00ACED,
                                "assets/twitter.png",
                              ),
                              iconBox(
                                context,
                                0xff202020,
                                "assets/buttonDark.png",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget iconBox(context, color, icon) {
  return Container(
    width: dynamicWidth(context, .042),
    height: dynamicHeight(context, .05),
    decoration: BoxDecoration(
      color: Color(color),
      borderRadius: BorderRadius.circular(
        dynamicHeight(context, .01),
      ),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(
        dynamicHeight(context, .01),
      ),
      child: Image.asset(
        icon,
        fit: BoxFit.fill,
      ),
    ),
  );
}
