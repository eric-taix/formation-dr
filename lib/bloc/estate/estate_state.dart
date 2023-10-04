part of 'estate_cubit.dart';

@immutable
sealed class EstateState {}

class EstateInitial extends EstateState {}

class EstateLoading extends EstateState {}

class EstateLoaded extends EstateState {
  final List<Estate> estates;

  EstateLoaded(this.estates);
}

class EstateError extends EstateState {
  final String message;

  EstateError(this.message);
}
