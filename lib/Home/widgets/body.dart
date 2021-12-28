// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:onli_studio/utils/config.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';
import 'package:onli_studio/widgets/text_widget.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      color: myGreyDark,
      child: Column(
        children: [
          //1st slider
          Container(
            // color: Colors.amber,
            height: dynamicHeight(context, 0.4),
            child: ListView(
              scrollDirection: Axis.horizontal,
              // shrinkWrap: true,
              children: [
                Container(
                    height: dynamicHeight(context, 0.4),
                    width: dynamicWidth(context, .7),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/mainScrl1.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Text("")),
                Container(
                    height: dynamicHeight(context, 0.4),
                    width: dynamicWidth(context, .7),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/mianScrl2.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Text("")),
                Container(
                    height: dynamicHeight(context, 0.4),
                    width: dynamicWidth(context, .7),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/mainScrl3.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Text("")),
              ],
            ),
          ),

          //2nd slider
          Container(
            // color: Colors.amber,
            height: dynamicHeight(context, 0.13),
            child: ListView(
              scrollDirection: Axis.horizontal,
              // shrinkWrap: true,
              children: [
                Container(
                    height: dynamicHeight(context, 0.17),
                    width: dynamicWidth(context, .23),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/miniScrl1.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Text("")),
                Container(
                    height: dynamicHeight(context, 0.17),
                    width: dynamicWidth(context, .23),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/miniScrl2.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Text("")),
                Container(
                    height: dynamicHeight(context, 0.17),
                    width: dynamicWidth(context, .23),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/miniScrl3.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Text("")),
                Container(
                    height: dynamicHeight(context, 0.17),
                    width: dynamicWidth(context, .23),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/miniScrl1.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Text("")),
                Container(
                    height: dynamicHeight(context, 0.17),
                    width: dynamicWidth(context, .23),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/miniScrl2.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Text("")),
                Container(
                    height: dynamicHeight(context, 0.17),
                    width: dynamicWidth(context, .23),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/miniScrl3.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Text("")),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
