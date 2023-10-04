import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test_dr/model/estate.model.dart';
import 'package:test_it/test_it.dart';

part 'estate_state.dart';

class EstateCubit extends Cubit<EstateState> {
  final r = Random();

  EstateCubit() : super(EstateInitial());

  void loadEstates() async {
    emit(EstateLoading());
    final a = Awesome();
    print(a.isAwesome);
    await Future.delayed(Duration(milliseconds: 2000));
    emit(EstateLoaded(List.generate(
        r.nextInt(5) + 1, (index) => Estate(title: 'Propriété $index', description: 'Description $index'))));
  }
}
