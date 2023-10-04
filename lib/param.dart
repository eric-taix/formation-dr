import 'package:flutter/material.dart';

class Param extends StatelessWidget {
  const Param({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(border: Border.all()), child: ListTile(title: Text('Parameter'))),
    );
  }
}
