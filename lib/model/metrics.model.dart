class MetricsModel {
  final double shares;
  final double cash;
  final double stake;
  final double draft;
  final RevenueModel revenueModel;

  MetricsModel({
    required this.shares,
    required this.cash,
    required this.stake,
    required this.draft,
    required this.revenueModel,
  });
}

class RevenueModel {
  final double percent;
  final double value;

  RevenueModel({required this.percent, required this.value});
}
