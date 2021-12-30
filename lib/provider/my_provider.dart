import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  int selectedMenu = 0;

  void selectMenu(int num) {
    selectedMenu = num;
    notifyListeners();
  }
}
