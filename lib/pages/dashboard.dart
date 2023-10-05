import 'package:flutter/material.dart';
import 'package:test_dr/pages/content.dart';
import 'package:test_dr/pages/navbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      NavBar(),
      Expanded(child: Content()),
    ]);
  }
}
