import 'package:countdown_app/Core/Utils/hive/hive_service.dart';
import 'package:countdown_app/Core/models/counter_down_event/counter_down_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'countdown_state.dart';

class CountdownCubit extends Cubit<CountdownState> {
  CountdownCubit() : super(CountdownInitial());

  List<CountdownEvent> list = [];
  CountdownEvent selectedEvent =
      CountdownEvent(id: -1, title: "NaN", eventDateTime: DateTime(0, 0, 0));

  void loadevents() async {
    emit(CountdownLoading());

    try {
      await getData();
      emit(LoadEventsSuccess(list: list));
    } catch (e) {
      emit(CountdownFaluir(text: "$e"));
    }
  }

  Future<void> getData() async {
    list = [];
    list = HiveService.eventsBox.values.map(
      (e) {
        return e;
      },
    ).toList();
  }
}
