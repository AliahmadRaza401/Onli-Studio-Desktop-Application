import 'package:flutter/material.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';
import 'package:onli_studio/widgets/text_widget.dart';

class ResourcesBody extends StatefulWidget {
  const ResourcesBody({Key? key}) : super(key: key);

  @override
  _ResourcesBodyState createState() => _ResourcesBodyState();
}

class _ResourcesBodyState extends State<ResourcesBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      color: const Color(0xffCCD0CA),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: dynamicWidth(context, 0.17),
                height: dynamicHeight(context, 0.8),
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Stories",
                      style: TextStyle(
                        fontSize: dynamicWidth(context, 0.04),
                        color: const Color(0xff959894),
                      ),
                    ),
                    Image.asset(
                      'assets/woman.png',
                      width: dynamicWidth(context, 0.25),
                      height: dynamicHeight(context, 0.5),
                    ),
                  ],
                ),
              ),
              //Center Container
              Container(
                width: dynamicWidth(context, 0.45),
                height: dynamicHeight(context, 0.8),
                padding: EdgeInsets.symmetric(
                  horizontal: dynamicWidth(context, 0.01),
                ),
                // color: Colors.yellow,
                child: Column(
                  children: [
                    SizedBox(
                      height: dynamicHeight(context, 0.05),
                    ),
                    text(
                      context,
                      'Class turpis magna sociosqu nulla',
                      0.035,
                      Colors.black,
                      boldText: FontWeight.w700,
                      fontFamily: 'CormorantGaramond',
                    ),
                    Row(
                      children: [
                        text(
                          context,
                          "BLOG",
                          0.007,
                          Colors.red,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        text(
                          context,
                          "|",
                          0.007,
                          Colors.black,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        text(
                          context,
                          "Auth Name",
                          0.007,
                          Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: dynamicHeight(context, 0.02),
                    ),
                    SizedBox(
                      // color: Colors.red,
                      height: dynamicHeight(context, 0.5),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text(
                              t1,
                              style: TextStyle(
                                fontSize: dynamicWidth(context, 0.008),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'CormorantGaramond',
                              ),
                            ),
                            SizedBox(
                              height: dynamicHeight(context, 0.02),
                            ),
                            Text(
                              t2,
                              style: TextStyle(
                                fontSize: dynamicWidth(context, 0.008),
                                fontFamily: 'CormorantGaramond',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Last Container
              SizedBox(
                width: dynamicWidth(context, 0.08),
                height: dynamicHeight(context, 0.8),
                // color: Colors.red,
                child: Column(
                  children: [
                    SizedBox(
                      height: dynamicHeight(context, 0.05),
                    ),
                    Row(
                      children: [
                        text(
                          context,
                          "24",
                          0.015,
                          const Color(0xff464646),
                          fontFamily: 'Exo',
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text(
                              context,
                              "MARCH",
                              0.007,
                              const Color(0xff858685),
                              fontFamily: 'Exo',
                            ),
                            text(
                              context,
                              "2021",
                              0.007,
                              const Color(0xff858685),
                              fontFamily: 'Exo',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  var t1 =
      "Quis lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Nam ac elit a ante commodo tristique.";

  var t2 =
      """Aliquam vulputate, tortor nec commodo vitae viverra urna nulla sed turpis. Nullam lacinia faucibus risus, a euismod lorem tincidunt id. Duis autem vel eum iriure dolor in hendrerit esse molestie consequat, vel illum dolore eu cumsanet iusto odio dignissim qui blandit praesent. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.Lorem ipsum dolor sit amet.praesent. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.
 Aliquam vulputate, tortor nec commodo vitae viverra urna nulla sed turpis. Nullam lacinia faucibus risus, a euismod lorem tincidunt id. Duis autem vel eum iriure dolor in hendrerit esse molestie consequat, vel illum dolore eu cumsanet iusto odio dignissim qui blandit praesent. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.Lorem ipsum dolor sit amet.praesent. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.


 Aliquam vulputate, tortor nec commodo vitae viverra urna nulla sed turpis. Nullam lacinia faucibus risus, a euismod lorem tincidunt id. Duis autem vel eum iriure dolor in hendrerit esse molestie consequat, vel illum dolore eu cumsanet iusto odio dignissim qui blandit praesent. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.Lorem ipsum dolor sit amet.praesent. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.
 Aliquam vulputate, tortor nec commodo vitae viverra urna nulla sed turpis. Nullam lacinia faucibus risus, a euismod lorem tincidunt id. Duis autem vel eum iriure dolor in hendrerit esse molestie consequat, vel illum dolore eu cumsanet iusto odio dignissim qui blandit praesent. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.Lorem ipsum dolor sit amet.praesent. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.
 Aliquam vulputate, tortor nec commodo vitae viverra urna nulla sed turpis. Nullam lacinia faucibus risus, a euismod lorem tincidunt id. Duis autem vel eum iriure dolor in hendrerit esse molestie consequat, vel illum dolore eu cumsanet iusto odio dignissim qui blandit praesent. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.Lorem ipsum dolor sit amet.praesent. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.
 Aliquam vulputate, tortor nec commodo vitae viverra urna nulla sed turpis. Nullam lacinia faucibus risus, a euismod lorem tincidunt id. Duis autem vel eum iriure dolor in hendrerit esse molestie consequat, vel illum dolore eu cumsanet iusto odio dignissim qui blandit praesent. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.Lorem ipsum dolor sit amet.praesent. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.
 Aliquam vulputate, tortor nec commodo vitae viverra urna nulla sed turpis. Nullam lacinia faucibus risus, a euismod lorem tincidunt id. Duis autem vel eum iriure dolor in hendrerit esse molestie consequat, vel illum dolore eu cumsanet iusto odio dignissim qui blandit praesent. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.Lorem ipsum dolor sit amet.praesent. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.
 """;
}
