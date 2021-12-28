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
      child: Column(
        children: [
          //1st slider
          Container(
            // color: Colors.amber,
            height: dynamicHeight(context, 0.4),
            width: dynamicWidth(context, .7),
            child: ListView(
              scrollDirection: Axis.horizontal,
              // shrinkWrap: true,
              children: [
                Center(
                  child: Container(
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
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: dynamicWidth(context, .02),
                        top: dynamicHeight(context, .26),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              text(
                                context,
                                "The Onli Presentation",
                                .02,
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
                ),
                Center(
                  child: Container(
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
                    child: Text(""),
                  ),
                ),
                Container(
                  height: dynamicHeight(context, 0.4),
                  width: dynamicWidth(context, .7),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/mianScrl3.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(""),
                ),
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
                  child: Text(""),
                ),
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
                  child: Text(""),
                ),
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
                  child: Text(""),
                ),
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
                  child: Text(""),
                ),
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
                  child: Text(""),
                ),
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
                  child: Text(""),
                ),
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
