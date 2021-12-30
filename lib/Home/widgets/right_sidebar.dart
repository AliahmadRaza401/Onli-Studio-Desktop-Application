import 'package:flutter/material.dart';
import 'package:onli_studio/Home/widgets/right_tab_search.dart';
import 'package:onli_studio/Home/widgets/right_tab_settings.dart';
import 'package:onli_studio/utils/config.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';

class RightSideBar extends StatefulWidget {
  const RightSideBar({Key? key}) : super(key: key);

  @override
  _RightSideBarState createState() => _RightSideBarState();
}

class _RightSideBarState extends State<RightSideBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xff141414),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            dynamicHeight(context, .08),
          ),
          child: AppBar(
            backgroundColor: myGreyDark,
            toolbarHeight: dynamicHeight(context, .1),
            elevation: 0.0,
            bottom: TabBar(
              onTap: (index) {
                print(index);
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
              ),
              indicatorColor: noColor,
              tabs: const [
                Tab(text: "Search"),
                Tab(text: "My Settings"),
              ],
            ),
            automaticallyImplyLeading: false,
          ),
        ),
        body: const TabBarView(
          children: [
            RightTabSearch(),
            RightTabSettings(),
          ],
        ),
      ),
    );
  }
}
