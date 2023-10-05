import 'package:flutter/material.dart';
import 'package:test_dr/pages/details.dart';
import 'package:test_dr/pages/side_bar.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(flex: 3, child: Details()),
        const Expanded(
          flex: 1,
          child: const SideBar(),
        ),
      ],
    );
  }
}
