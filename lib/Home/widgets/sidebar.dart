import 'package:flutter/material.dart';
import 'package:onli_studio/Home/home_page.dart';
import 'package:onli_studio/provider/my_provider.dart';
import 'package:onli_studio/utils/config.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';
import 'package:provider/provider.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  late MyProvider _myProvider;

  @override
  void initState() {
    super.initState();
    _myProvider = Provider.of<MyProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: dynamicHeight(context, 1),
      // color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: dynamicHeight(context, .08),
                color: myGreyDark,
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(
                  top: dynamicHeight(context, .03),
                  left: dynamicWidth(context, .009),
                ),
                child: Text(
                  "Onli Studio",
                  style: TextStyle(
                    color: myBlueTitle,
                    fontSize: dynamicWidth(context, 0.01),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              InkWell(
                  onTap: () {
                    setState(() {
                      _myProvider.selectMenu(1);
                    });
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(
                          menuNum: 1,
                        ),
                      ),
                    );
                  },
                  child: heading(context, "Onli", "")),
              InkWell(
                  onTap: () {
                    setState(() {
                      _myProvider.selectMenu(2);
                    });
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(
                          menuNum: 1,
                        ),
                      ),
                    );
                  },
                  child: heading(context, "Onli iD", "")),
              InkWell(
                  onTap: () {
                    setState(() {
                      _myProvider.selectMenu(3);
                    });
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(
                          menuNum: 1,
                        ),
                      ),
                    );
                  },
                  child: heading(context, "Onli Build", "")),
              InkWell(
                  onTap: () {
                    setState(() {
                      _myProvider.selectMenu(4);
                    });
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(
                          menuNum: 1,
                        ),
                      ),
                    );
                  },
                  child: heading(context, "Onli Cloud", "")),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      _myProvider.selectMenu(5);
                    });
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(
                          menuNum: 1,
                        ),
                      ),
                    );
                  },
                  child: heading(context, "Onli One", "")),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: dynamicWidth(context, .01),
                ),
                child: const Divider(
                  color: myGreyDark,
                  thickness: 2,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              heading(context, "Collections", ""),
              const SizedBox(
                height: 10,
              ),
              heading(context, "Protocol Containers", "(13)"),
              heading(context, "Infrastructure", "(20)"),
              heading(context, "Platform", "(20)"),
              heading(context, "Tolls", "(20)"),
              heading(context, "Cloud OS", "(20)"),
            ],
          ),
          Container(
            color: Colors.black,
            padding: EdgeInsets.symmetric(
              horizontal: dynamicHeight(context, 0.02),
            ),
            height: dynamicHeight(context, 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Need Help",
                  style: TextStyle(
                    color: myLightGreyText,
                    fontSize: dynamicHeight(context, 0.015),
                  ),
                ),
                Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.blue,
                  size: dynamicHeight(context, 0.02),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget heading(BuildContext context, title, no) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: dynamicHeight(context, .03),
        vertical: dynamicHeight(context, .02),
      ),
      alignment: Alignment.topLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: myWhite,
              fontSize: dynamicHeight(context, .015),
            ),
          ),
          Text(
            no,
            style: TextStyle(
              color: myWhite,
              fontSize: dynamicHeight(context, .015),
            ),
          ),
        ],
      ),
    );
  }
}
