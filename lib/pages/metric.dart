import 'package:flutter/material.dart';

class Metric extends StatelessWidget {
  const Metric({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4, right: 4),
            child: Icon(Icons.shopping_bag_outlined, size: 20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('2400', style: Theme.of(context).textTheme.bodyLarge),
              Text('Stackholders', style: Theme.of(context).textTheme.labelSmall)
            ],
          )
        ],
      ),
    );
  }
}
