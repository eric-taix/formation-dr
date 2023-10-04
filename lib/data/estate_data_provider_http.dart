import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:test_dr/data/estate_data_provider.dart';
import 'package:test_dr/model/estate.model.dart';

class EstateDataProviderHttpImpl extends EstateDataProvider {
  @override
  Future<List<Estate>> getAllEstates() async {
    await Future.delayed(const Duration(milliseconds: 250));
    final rawJson = await rootBundle.loadString('assets/json/data.json');
    final json = jsonDecode(rawJson);
    if (json case {'articles': List<dynamic> articles}) {
      return articles.expand((article) {
        final estate = Estate.fromJson(article);
        return estate != null ? [estate] : <Estate>[];
      }).toList();
    }
    throw Exception('Bad JSON format');
  }
}
