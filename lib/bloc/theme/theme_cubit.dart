import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeLight());

  switchTheme() {
    final currentState = state;
    final newThemeState = currentState is ThemeLight ? ThemeDark() : ThemeLight();
    emit(newThemeState);
  }
}
