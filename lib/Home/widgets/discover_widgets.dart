import 'package:flutter/material.dart';
import 'package:onli_studio/provider/my_provider.dart';
import 'package:onli_studio/utils/config.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';
import 'package:onli_studio/widgets/text_widget.dart';
import 'package:provider/provider.dart';

import '../home_page.dart';

Widget mainSliderBox(context, image) {
  return Center(
    child: Container(
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

class thirdSlider extends StatefulWidget {
  var image;
  var title;
  thirdSlider({this.image, this.title});

  @override
  _thirdSliderState createState() => _thirdSliderState();
}

class _thirdSliderState extends State<thirdSlider> {
  late MyProvider _myProvider;

  @override
  void initState() {
    super.initState();
    _myProvider = Provider.of<MyProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // setState(() {
        //   _myProvider.videoPlaying(true);
        // });
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const HomePage(
        //       menuNum: 1,
        //     ),
        //   ),
        // );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: dynamicWidth(context, .002),
        ),
        child: SizedBox(
          width: dynamicWidth(context, .18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: dynamicHeight(context, 0.1),
                width: dynamicWidth(context, .23),
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.cover,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  text(
                    context,
                    widget.title,
                    .008,
                    const Color(0xff6F6F6F),
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
                    const Color(0xff313131),
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
                  text(context, "(23)", .006, const Color(0xff313131))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget thirdSlider(context, image, title) {
//   return GestureDetector(
//        onTap: () {

//           _myProvider.videoPlaying(true);

//       },
//     child: Padding(
//       padding: EdgeInsets.symmetric(
//         horizontal: dynamicWidth(context, .002),
//       ),
//       child: SizedBox(
//         width: dynamicWidth(context, .18),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             SizedBox(
//               height: dynamicHeight(context, 0.1),
//               width: dynamicWidth(context, .23),
//               child: Image.asset(
//                 image,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             const Spacer(),
//             Row(
//               children: [
//                 text(
//                   context,
//                   title,
//                   .008,
//                   const Color(0xff6F6F6F),
//                   boldText: FontWeight.w600,
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 text(
//                   context,
//                   "Author Name",
//                   .008,
//                   const Color(0xff313131),
//                   boldText: FontWeight.w600,
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 Icon(
//                   Icons.star,
//                   color: myWhite,
//                   size: dynamicWidth(context, .006),
//                 ),
//                 Icon(
//                   Icons.star,
//                   color: myWhite,
//                   size: dynamicWidth(context, .006),
//                 ),
//                 Icon(
//                   Icons.star,
//                   color: myWhite,
//                   size: dynamicWidth(context, .006),
//                 ),
//                 Icon(
//                   Icons.star,
//                   color: myWhite,
//                   size: dynamicWidth(context, .006),
//                 ),
//                 widthBox(context, .01),
//                 text(context, "(23)", .006, const Color(0xff313131))
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

Widget fourthSlider(context, image) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: dynamicWidth(context, .002),
    ),
    child: SizedBox(
      width: dynamicWidth(context, .14),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: dynamicHeight(context, 0.1),
            width: dynamicWidth(context, .14),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          const Spacer(),
          Row(
            children: [
              text(
                context,
                "Dhryl Anton",
                .008,
                const Color(0xff6F6F6F),
                boldText: FontWeight.w600,
              ),
            ],
          ),
          Row(
            children: [
              text(
                context,
                "CEO THE ONLI CORPORATION",
                .005,
                const Color(0xff313131),
                boldText: FontWeight.w600,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
