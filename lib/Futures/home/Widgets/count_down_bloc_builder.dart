import 'package:countdown_app/Futures/home/Widgets/event_list_builder.dart';
import 'package:countdown_app/Futures/home/cubit/countdown_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountDownBlocBuilder extends StatelessWidget {
  const CountDownBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountdownCubit, CountdownState>(
      builder: (context, state) {
        if (state is LoadEventsSuccess) {
          return EventListBuilder(
            elements: state.list,
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
