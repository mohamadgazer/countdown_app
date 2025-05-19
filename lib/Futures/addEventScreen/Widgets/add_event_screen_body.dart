import 'package:countdown_app/Core/Utils/hive/hive_service.dart';
import 'package:countdown_app/Core/models/counter_down_event/counter_down_event.dart';
import 'package:countdown_app/Futures/home/cubit/countdown_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddEventScreenBody extends StatelessWidget {
  const AddEventScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () async {
            await HiveService.eventsBox.add(
              CountdownEvent(
                id: 12,
                emoji: "🔥",
                title: "12344",
                eventDateTime: DateTime.now().add(
                  const Duration(days: 30),
                ),
              ),
            );
            context.read<CountdownCubit>().loadevents();
            Navigator.pop(context);
          },
          child: const Text('This is the addEventScreen body')),
    );
  }
}
