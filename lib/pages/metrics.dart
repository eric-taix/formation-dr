import 'package:flutter/material.dart';
import 'package:test_dr/pages/overall_progress.dart';

import 'metric.dart';

class Metrics extends StatelessWidget {
  const Metrics({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Metric(icon: Icon(Icons.dashboard_outlined), title: '1,000,000', subTitle: 'Fully diluted shares'),
      Metric(icon: Icon(Icons.pie_chart_outline_sharp), title: '\$1,245,000', subTitle: 'Total cash raised'),
      Metric(icon: Icon(Icons.shopping_bag_outlined), title: '2400', subTitle: 'Stakeholders'),
      Metric(icon: Icon(Icons.lock_outline_rounded), title: '\$4,500', subTitle: 'In draft'),
      OverallProgress(title: '\$21.3k'),
    ]);
  }
}
