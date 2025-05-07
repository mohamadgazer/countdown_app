import 'package:countdown_app/Futures/home/Widgets/count_down_bloc_builder.dart';
import 'package:countdown_app/Futures/home/cubit/countdown_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CountdownCubit()..loadevents(),
      child: const CountDownBlocBuilder(),
    );
  }
}
