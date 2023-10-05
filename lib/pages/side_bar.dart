import 'package:flutter/material.dart';
import 'package:test_dr/pages/list_money.dart';

import 'card_tips.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('where your money go ?'),
        Expanded(child: const ListMoney()),
        const CardTips(),
      ],
    );
  }
}
