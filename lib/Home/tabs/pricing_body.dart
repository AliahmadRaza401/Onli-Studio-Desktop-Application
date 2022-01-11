import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:onli_studio/utils/config.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';
import 'package:onli_studio/widgets/text_widget.dart';

List<String> typeList = <String>[
  "Select Type",
  'Liquid',
  'Solid',
];

GlobalKey? _dropdownButtonKey;

class PricingBody extends StatefulWidget {
  const PricingBody({Key? key}) : super(key: key);

  @override
  _PricingBodyState createState() => _PricingBodyState();
}

class _PricingBodyState extends State<PricingBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: dynamicHeight(context, 1),
      width: dynamicWidth(context, .7),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/pricingBg.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: dynamicHeight(context, .07),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: dynamicWidth(context, .06),
              ),
              child: Row(
                children: [
                  text(
                    context,
                    "Let’s configure your onli.cloud",
                    .02,
                    myWhite,
                    fontFamily: 'OpenSans',
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: dynamicHeight(context, .02),
                left: dynamicWidth(context, .06),
              ),
              child: Row(
                children: [
                  ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Container(
                        height: dynamicHeight(context, .16),
                        width: dynamicWidth(context, .5),
                        color: myWhite.withOpacity(.16),
                        padding: EdgeInsets.symmetric(
                          vertical: dynamicHeight(context, .015),
                          horizontal: dynamicWidth(context, .024),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: dynamicWidth(context, .12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        text(
                                          context,
                                          "INFRASTRUCTURE",
                                          .008,
                                          myWhite,
                                          fontFamily: 'OpenSans',
                                        ),
                                        text(
                                          context,
                                          "Developer",
                                          .011,
                                          myWhite.withOpacity(.5),
                                          boldText: FontWeight.bold,
                                          fontFamily: 'OpenSans',
                                        ),
                                      ],
                                    ),
                                  ),
                                  VerticalDivider(
                                    width: dynamicWidth(context, .04),
                                    color: myWhite,
                                  ),
                                  SizedBox(
                                    width: dynamicWidth(context, .12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        text(
                                          context,
                                          "PLATFORM",
                                          .008,
                                          myWhite,
                                          fontFamily: 'OpenSans',
                                        ),
                                        text(
                                          context,
                                          "Believe",
                                          .011,
                                          myWhite.withOpacity(.5),
                                          boldText: FontWeight.bold,
                                          fontFamily: 'OpenSans',
                                        ),
                                      ],
                                    ),
                                  ),
                                  VerticalDivider(
                                    width: dynamicWidth(context, .04),
                                    color: myWhite,
                                  ),
                                  SizedBox(
                                    width: dynamicWidth(context, .12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        text(
                                          context,
                                          "PROTOCOL CONTAINERS",
                                          .008,
                                          myWhite,
                                          fontFamily: 'OpenSans',
                                        ),
                                        text(
                                          context,
                                          "1,000,000",
                                          .011,
                                          myWhite.withOpacity(.5),
                                          boldText: FontWeight.bold,
                                          fontFamily: 'OpenSans',
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              color: myWhite,
                            ),
                            IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: dynamicWidth(context, .12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        text(
                                          context,
                                          "MIDDLEWARE",
                                          .008,
                                          myWhite,
                                          fontFamily: 'OpenSans',
                                        ),
                                        text(
                                          context,
                                          "Convey Self Hosted",
                                          .011,
                                          myWhite.withOpacity(.5),
                                          boldText: FontWeight.bold,
                                          fontFamily: 'OpenSans',
                                        ),
                                      ],
                                    ),
                                  ),
                                  VerticalDivider(
                                    width: dynamicWidth(context, .04),
                                    color: myWhite,
                                  ),
                                  SizedBox(
                                    width: dynamicWidth(context, .12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        text(context, "ONLI ID", .008, myWhite),
                                        text(
                                          context,
                                          "Standard",
                                          .011,
                                          myWhite.withOpacity(.5),
                                          boldText: FontWeight.bold,
                                          fontFamily: 'OpenSans',
                                        ),
                                      ],
                                    ),
                                  ),
                                  VerticalDivider(
                                    width: dynamicWidth(context, .04),
                                    color: myWhite,
                                  ),
                                  SizedBox(
                                    width: dynamicWidth(context, .12),
                                    child: Container(
                                      width: dynamicWidth(context, .08),
                                      height: dynamicHeight(context, .042),
                                      decoration: BoxDecoration(
                                        color: const Color(0xff181818),
                                        borderRadius: BorderRadius.circular(
                                          dynamicWidth(context, .002),
                                        ),
                                      ),
                                      child: Center(
                                        child: text(
                                          context,
                                          "PRECONFIGURED",
                                          .008,
                                          myWhite,
                                          fontFamily: 'OpenSans',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            heightBox(context, .12),
            SizedBox(
              height: dynamicHeight(context, .46),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: dynamicWidth(context, .056),
                  ),
                  pricingCard(
                    context,
                    myWhite,
                    const Color(0xffC9C9C9),
                    "assets/oneRed.png",
                    "Infrastructure",
                    "The Onli One Network is a high security network that runs on Onli Cloud Os. "
                        "This is a private part of the internet. The network changes the ownership of "
                        "a Protocol Container upon request of the current owner. \n\nRate \$1.25 per hr 720 hr minimum",
                    "Onli Protocol \nOnli Convey \nOnli ID",
                    "SELECT TYPE OF INFRASTRUCTURE",
                    <String>['Developer  Sandbox', 'Live Network'],
                  ),
                  pricingCard(
                    context,
                    myWhite,
                    const Color(0xffE9E9E9),
                    "assets/oneGrey.png",
                    "Platform",
                    "Marketplace/Trading Platform with an independent DVN (record of ownership Transfer between two Users. "
                        "Conditional Transfer \n- Attach a Payment Provider to Buy or Sell",
                    "Onli Convey \nPayment Provider",
                    "SELECT A MARKETPLACE",
                    <String>['Developer  Sandbox', 'Live Network'],
                  ),
                  pricingCard(
                    context,
                    myWhite,
                    const Color(0xffE9E9E9),
                    "assets/oneGrey.png",
                    "Protocol",
                    "Protocol Containers are cryptographic containers that you assign a value to. "
                        "One time cost of \$0.05 per There are no transaction fees or gas/platform fees. "
                        "There is no mining. Containers are minted in 1mil Unit Blocks.",
                    "Onli One \nOnli Convey",
                    "HOW MANY COINS TO START",
                    <String>['Developer  Sandbox', 'Live Network'],
                  ),
                  pricingCard(
                    context,
                    const Color(0xff2b2b2b),
                    const Color(0xff2b2b2b),
                    "assets/xt.png",
                    "Middleware",
                    "Onli.One is a private part of the internet. To connect to the web and "
                        "your Appliance you will need Convey running on a unix server.   ",
                    "Onli Protocol \nOnli Convey \nOnli ID",
                    "HOW WILL YOU CONNECT",
                    <String>['Developer  Sandbox', 'Live Network'],
                  ),
                  pricingCard(
                    context,
                    const Color(0xff2b2b2b),
                    const Color(0xff2b2b2b),
                    "assets/xt.png",
                    "Onli ID",
                    "Onli ID provides authentication, authorization, vaults and statistics services in one. "
                        "If you expect to have more than 10,000 users concurrently then upgrade to the enterprise version..  ",
                    "Onli Protocol \nOnli Convey \nOnli ID",
                    "USER MANAGEMENT",
                    <String>['Developer  Sandbox', 'Live Network'],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool price = false;

  Widget pricingCard(context, gColor1, gColor2, image, title, para1, para2,
      dropdownTitle, dropdownItems) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: dynamicWidth(context, .0046),
      ),
      child: Container(
        width: dynamicWidth(context, .17),
        decoration: BoxDecoration(
          color: myWhite,
          borderRadius: BorderRadius.circular(
            dynamicWidth(context, .012),
          ),
          gradient: LinearGradient(
            colors: [
              gColor1,
              gColor2,
            ],
            begin: Alignment.topCenter,
          ),
        ),
        padding: EdgeInsets.all(
          dynamicWidth(context, .012),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  image,
                  height: dynamicHeight(context, .06),
                ),
              ],
            ),
            heightBox(context, .034),
            Row(
              children: [
                text(
                  context,
                  title,
                  .016,
                  const Color(0xff808080),
                  fontFamily: 'Helvetica',
                )
              ],
            ),
            heightBox(context, .006),
            Row(
              children: [
                Container(
                  width: dynamicWidth(context, .13),
                  height: dynamicHeight(context, .04),
                  decoration: BoxDecoration(
                    color: const Color(0xff1B1B1B),
                    borderRadius: BorderRadius.circular(
                      dynamicWidth(context, .002),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: dynamicWidth(context, .002),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        key: _dropdownButtonKey,
                        // value: selectedType == ""
                        //     ? typeList[0]
                        //     : selectedType,
                        iconSize: 20,
                        elevation: 9,
                        dropdownColor: const Color(0xff1B1B1B),
                        isExpanded: true,
                        onTap: () {
                          setState(() {
                            price = true;
                          });
                        },
                        onChanged: (String? value) async {
                          setState(() {
                            price = false;
                          });
                        },
                        hint: text(
                          context,
                          dropdownTitle,
                          .006,
                          const Color(0xffDDDDDD),
                          fontFamily: 'DMSans',
                        ),
                        items: dropdownItems
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: text(context, value, .006, myWhite),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            heightBox(context, .008),
            Row(
              children: [
                Flexible(
                  child: text(
                    context,
                    para1,
                    .007,
                    const Color(0xff808080),
                    maxLines: 7,
                    fontFamily: 'Helvetica',
                  ),
                ),
              ],
            ),
            heightBox(context, .008),
            Row(
              children: [
                text(
                  context,
                  "Requires",
                  .007,
                  const Color(0xff808080),
                  fontFamily: 'Helvetica',
                )
              ],
            ),
            heightBox(context, .008),
            Padding(
              padding: EdgeInsets.only(
                left: dynamicWidth(context, .03),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text(
                    context,
                    para2,
                    .007,
                    const Color(0xff808080),
                    fontFamily: 'Helvetica',
                  ),
                  text(
                    context,
                    price == false ? "" : "\$ 10",
                    .007,
                    const Color(0xff808080),
                    fontFamily: 'Helvetica',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
