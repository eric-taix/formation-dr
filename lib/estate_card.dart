import 'package:flutter/material.dart';
import 'package:test_dr/card_overlay.dart';

class EstateCard extends StatelessWidget {
  final String title;
  const EstateCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.zero,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 4,
                  child: Image.network(
                    'https://picsum.photos/200/300?${DateTime.now().millisecondsSinceEpoch}}',
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: Theme.of(context).textTheme.bodyMedium),
                        Text('SubTitle', style: Theme.of(context).textTheme.bodySmall),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const CardOverlay(),
          ],
        ));
  }
}
