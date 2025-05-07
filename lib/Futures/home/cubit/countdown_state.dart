part of 'countdown_cubit.dart';

sealed class CountdownState {}

final class CountdownInitial extends CountdownState {}

final class LoadEventsSuccess extends CountdownState {
  final List<CountdownEvent> list;

  LoadEventsSuccess({required this.list});
}
