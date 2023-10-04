import 'package:test_dr/model/estate.model.dart';

abstract class EstateRepository {
  Future<List<Estate>> getEstates();
}
