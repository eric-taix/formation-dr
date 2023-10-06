part of 'metrics_cubit.dart';

@immutable
sealed class MetricsState {}

class MetricsInitial extends MetricsState {}

class MetricsLoading extends MetricsState {}

class MetricsLoaded extends MetricsState {
  final MetricsModel metricsModel;

  MetricsLoaded({required this.metricsModel});
}

class MetricsError extends MetricsState {}
