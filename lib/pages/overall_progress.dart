import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

sealed class ProgressValue {}

class LoadingProgress extends ProgressValue {}

class LoadedProgress extends ProgressValue {
  final double progress;
  final double title;

  LoadedProgress({required this.progress, required this.title});
}

class OverallProgress extends StatelessWidget {
  const OverallProgress({super.key, required this.progressValue});

  final ProgressValue progressValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: switch (progressValue) {
              LoadingProgress() => Shimmer(
                  enabled: true,
                  color: Colors.grey,
                  colorOpacity: 1,
                  child: Opacity(
                    opacity: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 100),
                            child: LinearProgressIndicator(
                              value: 0.5,
                              minHeight: 20,
                            ),
                          ),
                        ),
                        Text('title', style: Theme.of(context).textTheme.bodyLarge),
                      ],
                    ),
                  ),
                ),
              LoadedProgress(:final progress, :final title) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 100),
                        child: LinearProgressIndicator(
                          value: progress,
                          minHeight: 20,
                        ),
                      ),
                    ),
                    Text(title.toString(), style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
            },
          ),
          Text('Outstanding revenue', style: Theme.of(context).textTheme.labelSmall),
        ],
      ),
    );
  }
}
