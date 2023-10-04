import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_dr/home_page.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(
    HomePage(),
  );
}

class MyBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    print('${bloc.runtimeType} $change');
    super.onChange(bloc, change);
  }
}
