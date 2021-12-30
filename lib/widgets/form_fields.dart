import 'package:flutter/material.dart';
import 'package:onli_studio/Home/home_page.dart';
import 'package:onli_studio/utils/app_routes.dart';

import '../utils/config.dart';
import '../utils/dynamic_sizes.dart';

Widget inputTextField(context, label, myController,
    {function, function2, function3, password = false, prefix = false}) {
  return Container(
    width: dynamicWidth(context, .16),
    height: dynamicHeight(context, .04),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
        prefix == true ? dynamicWidth(context, .002) : 0,
      ),
      color: prefix == true ? myWhite.withOpacity(.1) : myWhite.withOpacity(.2),
      border: Border.all(color: prefix == true ? noColor : myWhite),
    ),
    child: TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (function == "") ? () {} : function,
      controller: myController,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      obscureText: password == true ? obscureText : false,
      cursorColor: myWhite,
      cursorWidth: 1.0,
      style: TextStyle(
        color: myWhite,
        fontSize: dynamicWidth(context, .01),
      ),
      decoration: InputDecoration(
        prefixIcon: prefix == false
            ? null
            : Icon(
                Icons.search_rounded,
                color: myGreyText,
                size: dynamicWidth(context, .011),
              ),
        suffixIcon: password == false
            ? null
            : SizedBox(
                width: dynamicWidth(context, .03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: function2 == "" ? () {} : function2,
                      child: Image.asset(
                        "assets/password.png",
                        height: dynamicWidth(context, .04),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        push(
                          context,
                          const HomePage(
                            menuNum: 0,
                          ),
                        );
                      },
                      child: Icon(
                        Icons.arrow_forward_rounded,
                        color: myWhite,
                        size: dynamicWidth(context, .011),
                      ),
                    ),
                  ],
                ),
              ),
        hintText: prefix == true ? label : "",
        hintStyle: TextStyle(
          color: myGreyText,
          fontSize: dynamicWidth(context, .009),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: noColor),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: noColor),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: noColor),
        ),
        contentPadding: EdgeInsets.only(
          right: dynamicWidth(context, .006),
          left: dynamicWidth(context, .006),
          bottom: dynamicHeight(context, .032),
        ),
      ),
    ),
  );
}
