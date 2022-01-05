import 'package:flutter/material.dart';
import 'package:onli_studio/Home/home_page.dart';
import 'package:onli_studio/provider/my_provider.dart';
import 'package:onli_studio/utils/config.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';
import 'package:provider/provider.dart';

class LeftSideBar extends StatefulWidget {
  const LeftSideBar({Key? key}) : super(key: key);

  @override
  State<LeftSideBar> createState() => _LeftSideBarState();
}

class _LeftSideBarState extends State<LeftSideBar> {
  late MyProvider _myProvider;

  @override
  void initState() {
    super.initState();
    _myProvider = Provider.of<MyProvider>(context, listen: false);
  }

  bool c1 = false;
  bool c2 = false;
  bool c3 = false;
  bool c4 = false;
  bool c5 = false;

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
                    fontFamily: 'Rufina',
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
                  child: heading(context, "Onli", "", () {})),
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
                  child: heading(context, "Onli iD", "", () {})),
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
                  child: heading(context, "Onli Build", "", () {})),
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
                  child: heading(context, "Onli Cloud", "", () {})),
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
                  child: heading(context, "Onli One", "", () {})),
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
              heading(context, "Collections", "", () {}),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    c1 = !c1;
                  });
                },
                child: headingSelect(
                  context,
                  "Protocol Containers",
                  "(13)",
                  c1,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      c2 = !c2;
                    });
                  },
                  child: headingSelect(
                    context,
                    "Infrastructure",
                    "(20)",
                    c2,
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      c3 = !c3;
                    });
                  },
                  child: headingSelect(
                    context,
                    "Platform",
                    "(20)",
                    c3,
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      c4 = !c4;
                    });
                  },
                  child: headingSelect(
                    context,
                    "Tolls",
                    "(20)",
                    c4,
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      c5 = !c5;
                    });
                  },
                  child: headingSelect(
                    context,
                    "Cloud OS",
                    "(20)",
                    c5,
                  )),
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
                    fontFamily: 'DMSans',
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

  Widget headingSelect(
    BuildContext context,
    title,
    no,
    bool,
  ) {
    return GestureDetector(
      child: Container(
        color: bool == true ? Color(0xff2e2e2e) : Color(0xff222222),
        margin: EdgeInsets.symmetric(
          vertical: dynamicHeight(context, .001),
        ),
        alignment: Alignment.topLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                // horizontal: dynamicHeight(context, .03),
                vertical: dynamicHeight(context, .02),
              ),
              margin: EdgeInsets.symmetric(
                horizontal: dynamicHeight(context, .01),
              ),
              child: Row(
                children: [
                  bool == true
                      ? Icon(
                          Icons.arrow_right_rounded,
                          color: myWhite,
                          size: dynamicHeight(context, 0.03),
                        )
                      : SizedBox(
                          width: dynamicHeight(context, 0.03),
                        ),
                  Text(
                    title,
                    style: TextStyle(
                      color: myWhite,
                      fontSize: dynamicHeight(context, .015),
                      fontFamily: 'DMSans',
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
            ),
            bool == true
                ? Container(
                    height: dynamicHeight(context, .05),
                    width: dynamicHeight(context, .005),
                    color: Color(0xff2cb56e),
                    child: Text(""),
                  )
                : SizedBox(
                    width: 5,
                  ),
          ],
        ),
      ),
    );
  }

  Widget heading(BuildContext context, title, no, Function onTap) {
    return GestureDetector(
      onTap: onTap(),
      child: Container(
        padding: EdgeInsets.symmetric(
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
                fontFamily: 'DMSans',
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
      ),
    );
  }
}
