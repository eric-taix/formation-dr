import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_dr/bloc/estate/estate_cubit.dart';
import 'package:test_dr/estate_card.dart';

class DetailPage extends StatefulWidget {
  final String name;

  DetailPage({super.key, required this.name});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late final EstateCubit _estateCubit;

  @override
  void initState() {
    super.initState();
    _estateCubit = EstateCubit()..loadEstates();
  }

  @override
  void didUpdateWidget(covariant DetailPage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _estateCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(child: Text(widget.name)),
        Expanded(
          child: BlocBuilder<EstateCubit, EstateState>(
            bloc: _estateCubit,
            builder: (context, state) {
              return switch (state) {
                EstateInitial() => SizedBox(),
                EstateLoading() => Center(child: CircularProgressIndicator()),
                EstateError() => Center(child: Text('Error')),
                EstateLoaded(:final estates) => GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 400,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1.5,
                    ),
                    itemBuilder: (BuildContext context, int index) => EstateCard(title: estates[index].title),
                    itemCount: estates.length,
                  ),
              };
            },
          ),
        ),
      ],
    );
  }
}
