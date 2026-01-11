import 'package:flutter/widgets.dart';

class PageItem {
  final String appBarTitle;
  final Widget page;
  final String bottomBarTitle;

  const PageItem({
    required this.appBarTitle,
    required this.page,
    required this.bottomBarTitle,
  });
}
