import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:onli_studio/utils/config.dart';
import 'package:onli_studio/utils/dynamic_sizes.dart';
import 'package:onli_studio/widgets/form_fields.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: dynamicWidth(context, 1),
        height: dynamicHeight(context, 1),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/bg.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
              child: Container(
                width: dynamicWidth(context, 1),
                height: dynamicHeight(context, 1),
                decoration: BoxDecoration(
                  color: myBlack.withOpacity(.5),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: dynamicHeight(context, .08),
              ),
              child: Center(
                child: SizedBox(
                  width: dynamicWidth(context, .16),
                  height: dynamicHeight(context, .18),
                  child: Column(
                    children: [
                      SizedBox(
                        width: dynamicWidth(context, .16),
                        height: dynamicHeight(context, .1),
                        child: Image.asset(
                          "assets/p1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      heightBox(context, .02),
                      inputTextField(context, "Enter Password", password,
                          password: true, function2: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      }),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: dynamicHeight(context, .05),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: dynamicWidth(context, .1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/ethernet.png",
                        width: dynamicWidth(context, .03),
                      ),
                      Image.asset(
                        "assets/accessibility.png",
                        width: dynamicWidth(context, .03),
                      ),
                      Image.asset(
                        "assets/power.png",
                        width: dynamicWidth(context, .03),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
