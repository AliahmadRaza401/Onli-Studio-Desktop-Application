import 'package:flutter/material.dart';
import 'package:onli_studio/sidebar/right_tab_search.dart';
import 'package:onli_studio/sidebar/right_tab_settings.dart';
import 'package:onli_studio/utils/config.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';

class RightSideBar extends StatefulWidget {
  final bool check;

  const RightSideBar({Key? key, required this.check}) : super(key: key);

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
          child: Theme(
            data: ThemeData(
              highlightColor: noColor,
              splashColor: noColor,
            ),
            child: AppBar(
              backgroundColor: myGreyDark,
              toolbarHeight: dynamicHeight(context, .1),
              elevation: 0.0,
              bottom: TabBar(
                onTap: (index) {
                },
                isScrollable: true,
                unselectedLabelColor: myGreyText,
                unselectedLabelStyle: TextStyle(
                  fontSize: dynamicWidth(context, 0.007),
                  fontWeight: FontWeight.bold,
                ),
                labelColor: myWhite,
                labelStyle: TextStyle(
                  fontSize: dynamicWidth(context, 0.007),
                  fontWeight: FontWeight.bold,
                ),
                indicatorColor: noColor,
                tabs: [
                  const Tab(text: "Search"),
                  Tab(text: widget.check == false ? "My Settings" : "Author"),
                ],
              ),
              automaticallyImplyLeading: false,
            ),
          ),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            RightTabSearch(),
            RightTabSettings(),
          ],
        ),
      ),
    );
  }
}
