import 'package:test_dr/model/estate.model.dart';

abstract class EstateDataProvider {
  Future<List<Estate>> getAllEstates();
}
