import 'package:flutter/material.dart';

class IndexProvider with ChangeNotifier {
  int _index = 0;
  get index => _index;

  late final PageController _controller;

  get controller => _controller;

  IndexProvider() {
    this._controller = PageController();
  }

  changeIndex(int newIdx) {
    if (newIdx != _index) {
      _index = newIdx;
      _controller.jumpToPage(newIdx);
      notifyListeners();
    }
  }
}
