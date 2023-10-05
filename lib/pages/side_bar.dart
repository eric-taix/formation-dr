import 'package:flutter/material.dart';
import 'package:test_dr/pages/list_money.dart';

import 'card_tips.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.inversePrimary,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 48.0, bottom: 28),
              child: Text('Where your money go?', style: Theme.of(context).textTheme.bodyMedium),
            ),
            const Expanded(child: ListMoney()),
            CardTips(
              image: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/3/38/Robot-clip-art-book-covers-feJCV3-clipart.png'),
              title: 'Save more money',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              callToAction: ElevatedButton(
                onPressed: () {},
                child: Text('Learn more'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
