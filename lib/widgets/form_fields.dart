import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onli_studio/home_page.dart';
import 'package:onli_studio/utils/app_routes.dart';

import '../utils/config.dart';
import '../utils/dynamic_sizes.dart';

Widget inputTextField(context, label, myController,
    {function, function2, password = false}) {
  return Container(
    width: dynamicWidth(context, .16),
    height: dynamicHeight(context, .04),
    decoration: BoxDecoration(
      color: myWhite.withOpacity(.2),
      border: Border.all(color: myWhite),
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
        suffixIcon: password == false
            ? null
            : SizedBox(
                width: dynamicWidth(context, .03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: function2 == "" ? () {} : function2,
                      child: Icon(
                        Icons.remove_red_eye_rounded,
                        color: myWhite.withOpacity(.4),
                        size: dynamicWidth(context, .01),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        push(
                          context,
                          const HomePage(),
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
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: myWhite),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: myWhite),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: myWhite),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: dynamicWidth(context, .006),
        ),
      ),
    ),
  );
}
