import 'package:flutter/material.dart';
import 'package:onli_studio/Home/widgets/build_body.dart';
import 'package:onli_studio/Home/widgets/discover_body.dart';
import 'package:onli_studio/Home/widgets/learn_body.dart';
import 'package:onli_studio/Home/widgets/pricing_body.dart';
import 'package:onli_studio/Home/widgets/resources_body.dart';
import 'package:onli_studio/Home/widgets/sidebar.dart';
import 'package:onli_studio/provider/my_provider.dart';
import 'package:onli_studio/utils/config.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  int menuNum;
  HomePage({required this.menuNum});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;
    var mediaHeight = MediaQuery.of(context).size.height;

    return DefaultTabController(
      initialIndex: widget.menuNum,
      length: 5,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            color: myGreyLight,
            width: mediaWidth,
            height: mediaHeight,
            child: Row(
              children: [
                Container(
                  width: dynamicWidth(context, .15),
                  height: dynamicHeight(context, 1),
                  color: myGreyLight,
                  child: const SideBar(),
                ),
                Container(
                  width: dynamicWidth(context, .7),
                  height: dynamicHeight(context, 1),
                  color: myBlack,
                  child: Column(
                    children: [
                      SizedBox(
                        height: dynamicHeight(context, .08),
                        child: AppBar(
                          backgroundColor: myGreyDark,
                          bottom: TabBar(
                            onTap: (index) {
                              // Tab index when user select it, it start from zero
                              print(index);
                            },
                            isScrollable: true,
                            unselectedLabelColor: myGreyText,
                            unselectedLabelStyle: TextStyle(
                              fontSize: dynamicHeight(context, 0.02),
                              fontWeight: FontWeight.bold,
                            ),
                            labelColor: myWhite,
                            labelStyle: TextStyle(
                              fontSize: dynamicHeight(context, 0.02),
                              fontWeight: FontWeight.bold,
                            ),
                            indicatorColor: noColor,
                            tabs: const [
                              Tab(text: "Discover"),
                              Tab(text: "Learn"),
                              Tab(text: "Build"),
                              Tab(text: "Pricing"),
                              Tab(text: "Resources"),
                            ],
                          ),
                          automaticallyImplyLeading: false,
                        ),
                      ),
                      // TopBar(),
                      const Expanded(
                        child: TabBarView(
                          children: [
                            DiscoverBody(),
                            LearnBody(),
                            BuildBody(),
                            PricingBody(),
                            ResourcesBody(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: dynamicWidth(context, .15),
                  height: dynamicHeight(context, 1),
                  color: myGreyLight,
                  child: Center(child: const Text("3")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
