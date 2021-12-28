import 'package:flutter/material.dart';
import 'package:onli_studio/Home/widgets/body.dart';
import 'package:onli_studio/Home/widgets/sidebar.dart';
import 'package:onli_studio/Home/widgets/topbar.dart';
import 'package:onli_studio/utils/config.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;
    var mediaHeight = MediaQuery.of(context).size.height;

    return Scaffold(
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
                child: SideBar(),
              ),
              Container(
                width: dynamicWidth(context, .7),
                height: dynamicHeight(context, 1),
                color: myBlack,
                child: Column(
                  children: [
                    TopBar(),
                    Body(),
                  ],
                ),
              ),
              Container(
                width: dynamicWidth(context, .15),
                height: dynamicHeight(context, 1),
                color: myGreyLight,
                child: Text("3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
