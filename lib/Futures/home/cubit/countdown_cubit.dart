import 'package:bloc/bloc.dart';
import 'package:countdown_app/Core/Utils/hive/hive_service.dart';
import 'package:countdown_app/Core/models/counter_down_event/counter_down_event.dart';
import 'package:meta/meta.dart';

part 'countdown_state.dart';

class CountdownCubit extends Cubit<CountdownState> {
  CountdownCubit() : super(CountdownInitial());

  List<CountdownEvent> list = HiveService.eventsBox.values.map(
    (e) {
      return e;
    },
  ).toList();
  void loadevents() {
    emit(LoadEventsSuccess(list: list));
  }
}
