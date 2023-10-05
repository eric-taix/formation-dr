import 'package:flutter/material.dart';

class CardTips extends StatelessWidget {
  const CardTips({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(constraints: BoxConstraints(maxHeight: 250), child: const Placeholder());
  }
}
