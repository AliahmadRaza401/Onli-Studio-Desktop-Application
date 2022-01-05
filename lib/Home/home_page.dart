import 'package:flutter/material.dart';
import 'package:onli_studio/Home/tabs/build_body.dart';
import 'package:onli_studio/sidebar/build_sidebar.dart';
import 'package:onli_studio/Home/tabs/discover_body.dart';
import 'package:onli_studio/Home/tabs/learn_body.dart';
import 'package:onli_studio/sidebar/left_sidebar.dart';
import 'package:onli_studio/Home/tabs/pricing_body.dart';
import 'package:onli_studio/sidebar/pricing_sidebar.dart';
import 'package:onli_studio/Home/tabs/resources_body.dart';
import 'package:onli_studio/sidebar/right_sidebar.dart';
import 'package:onli_studio/utils/config.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';

class HomePage extends StatefulWidget {
  final int menuNum;

  const HomePage({Key? key, required this.menuNum}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int tabBarIndex = 0;

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
                  width: dynamicWidth(context, .14),
                  height: dynamicHeight(context, 1),
                  color: myGreyLight,
                  child: const LeftSideBar(),
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
                              setState(() {
                                tabBarIndex = index;
                              });
                            },
                            isScrollable: true,
                            unselectedLabelColor: myGreyText,
                            unselectedLabelStyle: TextStyle(
                              fontSize: dynamicHeight(context, 0.016),
                              fontWeight: FontWeight.bold,
                            ),
                            labelColor: myWhite,
                            labelStyle: TextStyle(
                              fontSize: dynamicHeight(context, 0.016),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'DMSans',
                            ),
                            indicatorColor: noColor,
                            tabs: const [
                              Tab(text: "Discover" ,),
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
                  width: dynamicWidth(context, .16),
                  height: dynamicHeight(context, 1),
                  color: myGreyLight,
                  child: _getSideBar(tabBarIndex),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _getSideBar(int page) {
    switch (page) {
      case 0:
        return const RightSideBar();
      case 1:
        return const RightSideBar();
      case 2:
        return const BuildSideBar();
      case 3:
        return const PricingSideBar();
      case 4:
        return const RightSideBar();
      default:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Text(
              ('TabBar Index Error'),
            ),
          ],
        );
    }
  }
}
