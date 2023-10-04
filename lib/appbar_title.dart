import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_dr/bloc/theme/theme_cubit.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Center(child: Text('Title'))),
        const Icon(Icons.nightlight),
        BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return Switch(
                value: state is ThemeLight,
                onChanged: (_) {
                  context.read<ThemeCubit>().switchTheme();
                  //BlocProvider.of<ThemeCubit>(context).switchTheme();
                });
          },
        ),
        const Icon(Icons.sunny),
        const SizedBox(width: 50),
      ],
    );
  }
}
