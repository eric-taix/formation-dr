import 'package:flutter/material.dart';
import 'package:test_dr/pages/money_progression.dart';

class ListMoney extends StatelessWidget {
  const ListMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      MoneyProgression(
        title: 'Transactions',
        progression: 0.25,
        total: '872.400',
      ),
      MoneyProgression(
        title: 'Teams',
        progression: 0.22,
        total: '1,378.200',
      ),
      MoneyProgression(
        title: 'Conversation',
        progression: 0.3,
        total: '928.500',
      ),
      MoneyProgression(
        title: 'Transportation',
        progression: 0.28,
        total: '420.700',
      ),
      MoneyProgression(
        title: 'Vehicle',
        progression: 0.42,
        total: '520.000',
      ),
    ]);
  }
}
