import 'package:flutter/material.dart';

class MoneyProgression extends StatelessWidget {
  MoneyProgression({super.key, required this.title, required this.progression, required this.total});

  final String title;
  final double progression;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text(title, style: TextStyle(overflow: TextOverflow.ellipsis))),
                Text(total),
              ],
            ),
          ),
          LinearProgressIndicator(
            minHeight: 6,
            borderRadius: BorderRadius.circular(4),
            value: progression,
          )
        ],
      ),
    );
  }
}
