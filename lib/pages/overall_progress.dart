import 'package:flutter/material.dart';

class OverallProgress extends StatelessWidget {
  const OverallProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 100),
                  child: LinearProgressIndicator(
                    value: 0.3,
                    minHeight: 16,
                  ),
                ),
              ),
              Text('\$24', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          Text('Outstanding revenue', style: Theme.of(context).textTheme.labelSmall),
        ],
      ),
    );
  }
}
