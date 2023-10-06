import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

sealed class TitleValue {}

class TitleLoading extends TitleValue {}

class TitleLoaded extends TitleValue {
  final String value;

  TitleLoaded({required this.value});
}

class Metric extends StatelessWidget {
  const Metric({super.key, required this.title, required this.subTitle, required this.icon});

  final TitleValue title;
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
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: switch (title) {
                  TitleLoading() => Shimmer(
                      enabled: true,
                      color: Colors.grey,
                      colorOpacity: 1,
                      child: Opacity(
                        opacity: 0,
                        child: Text('1234567', style: Theme.of(context).textTheme.bodyLarge),
                      ),
                    ),
                  TitleLoaded(value: final title) => Text(title, style: Theme.of(context).textTheme.bodyLarge),
                },
              ),
              Text(subTitle, style: Theme.of(context).textTheme.labelSmall)
            ],
          )
        ],
      ),
    );
  }
}
