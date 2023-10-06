import 'package:flutter/material.dart';
import 'package:test_dr/appbar_title.dart';

class SplitView extends StatelessWidget {
  final Widget menu;
  final Widget content;
  final double breakpoint;
  final double menuWidth;

  const SplitView({super.key, required this.menu, required this.content, this.breakpoint = 600, this.menuWidth = 200});

  @override
  Widget build(BuildContext context) {
    final smallScreen = MediaQuery.of(context).size.width < breakpoint;
    if (smallScreen) {
      return Scaffold(
        appBar: AppBar(
          title: AppBarTitle(),
        ),
        body: Row(
          children: [
            Expanded(child: content),
          ],
        ),
        drawer: SizedBox(
          width: menuWidth,
          child: Drawer(child: menu),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: AppBarTitle(),
        ),
        body: Row(
          children: [
            /*SizedBox(
              width: menuWidth,
              child: menu,
            ),
            const VerticalDivider(),*/
            Expanded(child: content),
          ],
        ),
      );
    }
  }
}
