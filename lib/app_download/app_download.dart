import 'package:flutter/material.dart';
import 'package:onli_studio/Home/home_page.dart';
import 'package:onli_studio/utils/app_routes.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';
import 'package:onli_studio/widgets/text_widget.dart';

class AppDownload extends StatelessWidget {
  const AppDownload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: dynamicWidth(context, 1),
        height: dynamicHeight(context, 1),
        color: const Color(0xFF181818),
        child: Center(
          child: Container(
            width: dynamicWidth(context, 0.5),
            height: dynamicHeight(context, 0.7),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/mobile.png",
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: dynamicWidth(context, 0.3),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text(
                            context,
                            'Download our app',
                            0.02,
                            Colors.white,
                            boldText: FontWeight.w800,
                          ),
                          SizedBox(
                            height: dynamicHeight(context, 0.01),
                          ),
                          text(
                            context,
                            'Lorem Ipsum is simply dummy text of the printing and typesetting \n industry. Lorem Ipsum has been the industry since the 1500s',
                            0.006,
                            Colors.white,
                            boldText: FontWeight.w800,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: dynamicHeight(context, 0.02),
                            ),
                            width: dynamicWidth(context, 0.16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color(0xff6D6D6D),
                            ),
                            padding: const EdgeInsets.only(
                              left: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: Colors.white,
                                        size: dynamicWidth(context, 0.01),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      text(
                                        context,
                                        "Email Address",
                                        0.007,
                                        Colors.white,
                                        boldText: FontWeight.w700,
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    push(
                                      context,
                                      const HomePage(menuNum: 0),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Submit.png',
                                    height: dynamicHeight(context, 0.06),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          text(
                            context,
                            "* We don’t spam customers. Check our Privacy Policy",
                            0.005,
                            Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
