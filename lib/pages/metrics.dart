import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_dr/bloc/metrics/metrics_cubit.dart';

import '../model/metrics.model.dart';
import 'metric.dart';
import 'overall_progress.dart';

typedef ValueExtractor = double Function(MetricsModel);

final metrics = <({Widget icon, String subtitle, ValueExtractor valueExtractor})>[
  (
    icon: const Icon(Icons.dashboard_outlined),
    subtitle: 'Fully diluted shares',
    valueExtractor: (metricsModel) => metricsModel.shares
  ),
  (
    icon: const Icon(Icons.pie_chart_outline_sharp),
    subtitle: 'Total cash raised',
    valueExtractor: (metricsModel) => metricsModel.cash
  ),
  (
    icon: const Icon(Icons.shopping_bag_outlined),
    subtitle: 'Stakeholders',
    valueExtractor: (metricsModel) => metricsModel.stake
  ),
  (
    icon: const Icon(Icons.lock_outline_rounded),
    subtitle: 'In draft',
    valueExtractor: (metricsModel) => metricsModel.draft
  ),
];

class Metrics extends StatelessWidget {
  const Metrics({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MetricsCubit()..loadMetrics(),
      child: BlocBuilder<MetricsCubit, MetricsState>(
        builder: (context, state) {
          return switch (state) {
            MetricsInitial() => const SizedBox(),
            MetricsLoading() || MetricsLoaded() => Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...metrics.map(
                    (metric) {
                      return Metric(
                        icon: metric.icon,
                        title: switch (state) {
                          // We must handle these cases due to Dart
                          MetricsInitial() || MetricsLoading() || MetricsError() => TitleLoading(),
                          MetricsLoaded(:final metricsModel) => TitleLoaded(
                              value: metric.valueExtractor(metricsModel).toString(),
                            ),
                        },
                        subTitle: metric.subtitle,
                      );
                    },
                  ).toList(),
                  OverallProgress(
                    progressValue: switch (state) {
                      MetricsInitial() || MetricsLoading() || MetricsError() => LoadingProgress(),
                      MetricsLoaded(
                        metricsModel: MetricsModel(
                          revenueModel: RevenueModel(:final percent, :final value),
                        ),
                      ) =>
                        LoadedProgress(
                          progress: percent,
                          title: value,
                        )
                    },
                  )
                ],
              ),
            MetricsError() => const Center(
                child: Text('Not found'),
              ),
          };
        },
      ),
    );
  }
}
