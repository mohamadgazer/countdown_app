import 'package:countdown_app/Futures/home/cubit/countdown_cubit.dart';
import 'package:countdown_app/exports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Widgets/event_detiails_screen_body.dart';

class EventDetiailsScreenView extends StatelessWidget {
  const EventDetiailsScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.read<CountdownCubit>().selectedEvent.title),
      ),
      body: const EventDetiailsScreenBody(),
    );
  }
}
