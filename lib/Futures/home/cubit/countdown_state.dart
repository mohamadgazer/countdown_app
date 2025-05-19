part of 'countdown_cubit.dart';

sealed class CountdownState {}

final class CountdownInitial extends CountdownState {}

final class CountdownLoading extends CountdownState {}

final class CountdownFaluir extends CountdownState {
  final String text;

  CountdownFaluir({required this.text});
}

final class LoadEventsSuccess extends CountdownState {
  final List<CountdownEvent> list;

  LoadEventsSuccess({required this.list});
}
