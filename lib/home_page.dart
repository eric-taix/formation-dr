import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_dr/app_theme.dart';
import 'package:test_dr/bloc/theme/theme_cubit.dart';
import 'package:test_dr/data/estate_data_provider_http.dart';
import 'package:test_dr/detail_page.dart';
import 'package:test_dr/menu.dart';
import 'package:test_dr/page_model.dart';
import 'package:test_dr/parameters.dart';
import 'package:test_dr/repository/estate_repository.dart';
import 'package:test_dr/repository/estate_repository_impl.dart';
import 'package:test_dr/split_view.dart';

final pages = [
  PageModel(
      title: 'Users',
      builder: (context) {
        return DetailPage(key: ValueKey('u'), name: 'Users');
      }),
  PageModel(
      title: 'Real estates',
      builder: (context) {
        return DetailPage(key: ValueKey('e'), name: 'Real eStates');
      }),
  PageModel(
      title: 'Parameters',
      builder: (context) {
        return Parameters();
      }),
];

class HomePage extends StatelessWidget {
  final ValueNotifier<PageModel> _selectedPageNotifier = ValueNotifier(pages[0]);

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<EstateRepository>(
      create: (context) => EstateRepositoryImpl(estateDataProvider: EstateDataProviderHttpImpl()),
      child: BlocProvider(
        create: (context) => ThemeCubit(),
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return MaterialApp(
              theme: state is ThemeLight ? jeremyTheme : defaultTheme,
              home: ValueListenableBuilder(
                valueListenable: _selectedPageNotifier,
                builder: (BuildContext context, PageModel selectedPage, Widget? child) {
                  return SplitView(
                    menu: Menu(
                      pages: pages,
                      onPageSelected: (page) => _selectedPageNotifier.value = page,
                    ),
                    content: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: selectedPage.builder(context),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
