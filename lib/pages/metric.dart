import 'package:flutter/material.dart';

class Metric extends StatelessWidget {
  const Metric({super.key, required this.title, required this.subTitle, required this.icon});

  final String title;
  final String subTitle;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 6, right: 4),
            child: icon,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.bodyLarge),
              Text(subTitle, style: Theme.of(context).textTheme.labelSmall)
            ],
          )
        ],
      ),
    );
  }
}
