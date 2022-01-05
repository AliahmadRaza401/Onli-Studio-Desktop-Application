import 'package:flutter/material.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';
import 'package:onli_studio/widgets/text_widget.dart';

class PricingSideBar extends StatefulWidget {
  const PricingSideBar({Key? key}) : super(key: key);

  @override
  _PricingSideBarState createState() => _PricingSideBarState();
}

class _PricingSideBarState extends State<PricingSideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: dynamicHeight(context, 0.05),
        horizontal: dynamicWidth(context, 0.008),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text(
                  context,
                  "Welcome Dhryl",
                  0.008,
                  Color(0xff707070),
                  fontFamily: 'OpenSans',
                ),
                text(
                  context,
                  "LogOut",
                  0.008,
                  Color(0xff707070),
                  fontFamily: 'HelveticaNeue_Thin',
                ),
              ],
            ),
            SizedBox(
              height: dynamicHeight(context, 0.03),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                text(
                  context,
                  'Pricing',
                  0.013,
                  Color(0xff929292),
                  fontFamily: 'DMSans',
                )
              ],
            ),
            SizedBox(
              height: dynamicHeight(context, 0.007),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                text(
                  context,
                  'July 7th 2020',
                  0.009,
                  Color(0xff929292),
                  fontFamily: 'DMSans',
                )
              ],
            ),
            SizedBox(
              height: dynamicHeight(context, 0.02),
            ),
            Divider(
              color: Color(0xff929292),
              thickness: 0.4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                text(context, 'Infrastructure', 0.008, Color(0xff929292))
              ],
            ),
            tile("Developer", "01", r"$2500"),
            tile("Protocol", "", r""),
            tile("ZeroValue Testing Coins", "01", r"$1000"),
            tile("Middleware", "", r""),
            tile("Hosted", "01", r"$1500"),
            tile("Onli ID E", "01", r"$2500"),
            bar(),
            tile("Cloud Services  Monthly", "", r"$10,800"),
            bar(),
            tile("Value Storage Non Reoccuring", "", r"$0"),
            bar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text(context, "Total Due", 0.01, Color(0xff929292)),
                SizedBox(
                  width: dynamicWidth(context, 0.003),
                ),
                text(context, r"$10,800", 0.01, Color(0xff929292))
              ],
            ),
            bar(),
            text(
                context,
                r"The pricing estimates displayed are based on your selected cloud services, configurations and dependent services.  Pricing estimate does not include coin inventory. Pricing estimate does not include the cost of Convey servers, which you will need to communicate with Onli Cloud. Your estimate at checkout may differ depending on pricing and availabliity of third party service providers.  Please consult a Case Manager when configuring services. ",
                0.008,
                Color(0xff929292))
          ],
        ),
      ),
    );
  }

  Widget bar() {
    return Divider(
      color: Color(0xff929292),
      thickness: 0.4,
    );
  }

  Widget tile(title, no, rs) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: dynamicHeight(context, 0.01),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text(context, title, 0.008, Color(0xff929292)),
          Container(
            child: Row(
              children: [
                text(context, no, 0.008, Color(0xff929292)),
                SizedBox(
                  width: dynamicWidth(context, 0.003),
                ),
                text(context, rs, 0.008, Color(0xff929292))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
