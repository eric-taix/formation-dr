import 'package:flutter/material.dart';

class CardTips extends StatelessWidget {
  const CardTips(
      {super.key, required this.image, required this.title, required this.description, required this.callToAction});

  final Image image;
  final String title;
  final String description;
  final Widget callToAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 250),
        child: Card(
          margin: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 8),
            child: Column(
              children: [
                Expanded(child: image),
                Text(title, style: Theme.of(context).textTheme.bodyMedium),
                Text(description, style: Theme.of(context).textTheme.labelSmall, textAlign: TextAlign.center),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: callToAction,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
