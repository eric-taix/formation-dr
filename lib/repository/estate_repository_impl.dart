import 'dart:math';

import 'package:test_dr/data/estate_data_provider.dart';
import 'package:test_dr/model/estate.model.dart';
import 'package:test_dr/repository/estate_repository.dart';

class EstateRepositoryImpl implements EstateRepository {
  final EstateDataProvider estateDataProvider;

  EstateRepositoryImpl({required this.estateDataProvider});
  final r = Random();

  @override
  Future<List<Estate>> getEstates() async {
    final estates = await estateDataProvider.getAllEstates();
    return estates;
  }
}
