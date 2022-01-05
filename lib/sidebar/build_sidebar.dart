import 'package:flutter/material.dart';
import 'package:onli_studio/login.dart';
import 'package:onli_studio/utils/config.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';
import 'package:onli_studio/widgets/text_widget.dart';

class BuildSideBar extends StatefulWidget {
  const BuildSideBar({Key? key}) : super(key: key);

  @override
  _BuildSideBarState createState() => _BuildSideBarState();
}

class _BuildSideBarState extends State<BuildSideBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff141414),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: dynamicWidth(context, .008),
          vertical: dynamicHeight(context, .01),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: dynamicHeight(context, .014),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    text(
                      context,
                      "Welcome Dhryl",
                      .01,
                      const Color(0xff6D6D6D),
                      fontFamily: 'OpenSans',
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: text(
                        context,
                        "Logout",
                        .008,
                        const Color(0xff6D6D6D),
                        fontFamily: 'HelveticaNeue_Thin',
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: myWhite.withOpacity(.4),
                height: dynamicHeight(context, .02),
              ),
              Row(
                children: [
                  SizedBox(
                    width: dynamicWidth(context, .06),
                    height: dynamicHeight(context, .12),
                    child: Image.asset(
                      "assets/Node.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              heightBox(context, .02),
              Row(
                children: [
                  text(
                    context,
                    "Placing an Order",
                    .01,
                    const Color(0xffDEDEDE),
                    fontFamily: 'HelveticaNeue_Thin',
                  ),
                ],
              ),
              Divider(
                color: myWhite.withOpacity(.4),
                height: dynamicHeight(context, .03),
              ),
              Row(
                children: [
                  SizedBox(
                    width: dynamicWidth(context, .14),
                    child: text(
                      context,
                      "Last updated :    Mar 10, 2020 \n\nOrder\nYou submit an order to the middleware appliance Convey. "
                      "The middleware will assemble the responses from the platform. "
                      "In our example the coin platform is Believe + payment provider PrimeTrust.\n\namt",
                      .006,
                      const Color(0xffDEDEDE),
                      maxLines: 10,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ],
              ),
              heightBox(context, .01),
              SizedBox(
                width: dynamicWidth(context, .14),
                height: dynamicHeight(context, .22),
                child: Image.asset(
                  "assets/Group 83.png",
                  fit: BoxFit.fill,
                ),
              ),
              heightBox(context, .01),
              Row(
                children: [
                  SizedBox(
                    width: dynamicWidth(context, .14),
                    child: text(
                      context,
                      "Before you begin\n\n",
                      .008,
                      const Color(0xffDEDEDE),
                      maxLines: 10,
                      boldText: FontWeight.w500,
                      fontFamily: 'HelveticaNeue_Thin',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: dynamicWidth(context, .14),
                    child: text(
                      context,
                      "You'll need the following things to place an order \n\n• A authorization code "
                      "(identifying the requesting agent) \n• The userID’s of the source and destination \n"
                      "• In the case of a BUY or a SELL request then the payment provider ID, and the account ID. "
                      "If there is no payment “action” then the Order is treated as a transfer.",
                      .006,
                      const Color(0xffDEDEDE),
                      maxLines: 10,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ],
              ),
              heightBox(context, .01),
              Row(
                children: [
                  SizedBox(
                    width: dynamicWidth(context, .14),
                    child: text(
                      context,
                      "Step 2. Formatting your request\n\n",
                      .008,
                      const Color(0xffDEDEDE),
                      maxLines: 10,
                      boldText: FontWeight.w500,
                      fontFamily: 'HelveticaNeue_Thin',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: dynamicWidth(context, .14),
                    child: text(
                      context,
                      "Now here is the proper format of a request. You will receive one of two responses "
                      "when making an order: orderComplete or orderError.",
                      .006,
                      const Color(0xffDEDEDE),
                      maxLines: 10,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ],
              ),
              heightBox(context, .01),
              SizedBox(
                width: dynamicWidth(context, .14),
                height: dynamicHeight(context, .22),
                child: Image.asset(
                  "assets/item.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
