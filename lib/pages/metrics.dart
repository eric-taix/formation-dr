import 'package:flutter/material.dart';
import 'package:test_dr/pages/overall_progress.dart';

import 'metric.dart';

class Metrics extends StatelessWidget {
  const Metrics({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Metric(),
      Metric(),
      OverallProgress(),
    ]);
  }
}
