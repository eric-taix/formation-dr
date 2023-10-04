import 'package:flutter/material.dart';
import 'package:test_dr/param.dart';

class Parameters extends StatelessWidget {
  const Parameters({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Param(
        key: ValueKey(index),
      ),
      itemCount: 20,
    );
  }
}
