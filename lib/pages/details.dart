import 'package:flutter/material.dart';
import 'package:test_dr/pages/metrics.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 75,
            child: const Metrics(),
          ),
          const Placeholder(),
          const Placeholder(),
        ],
      ),
    );
  }
}
