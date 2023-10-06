import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test_dr/model/metrics.model.dart';

part 'metrics_state.dart';

class MetricsCubit extends Cubit<MetricsState> {
  MetricsCubit() : super(MetricsInitial());
  Future<void> loadMetrics() async {
    emit(MetricsLoading());
    try {
      await Future.delayed(
        Duration(milliseconds: 3500),
      );
      emit(
        MetricsLoaded(
          metricsModel: MetricsModel(
            shares: 3.0,
            cash: 300.000,
            stake: 9.2,
            draft: 56.34,
            revenueModel: RevenueModel(percent: 0.3, value: 21.3),
          ),
        ),
      );
    } catch (e) {
      emit(MetricsError());
    }
  }
}
