import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  int selectedMenu = 0;
  bool playVideo = false;

  void selectMenu(int num) {
    selectedMenu = num;
    notifyListeners();
  }

    void videoPlaying(bool val) {
    playVideo = val;
    notifyListeners();
  }
}
