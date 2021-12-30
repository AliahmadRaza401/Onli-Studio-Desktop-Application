import 'package:flutter/material.dart';
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
        appBar: AppBar(
          backgroundColor: myGreyDark,
          toolbarHeight: dynamicHeight(context, .1),
          bottom: TabBar(
            onTap: (index) {
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
            ],
          ),
          automaticallyImplyLeading: false,
        ),
        backgroundColor: myWhite,
      ),
    );
  }
}
