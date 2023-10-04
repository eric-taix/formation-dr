import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:test_dr/model/estate.model.dart';
import 'package:test_dr/repository/estate_repository.dart';

part 'estate_state.dart';

class EstateCubit extends Cubit<EstateState> {
  final EstateRepository repository;

  EstateCubit(this.repository) : super(EstateInitial());

  void loadEstates() async {
    emit(EstateLoading());
    try {
      final result = await repository.getEstates();
      emit(EstateLoaded(result));
    } catch (e, s) {
      emit(EstateError(e.toString()));
    }
  }
}
