part of 'countdown_cubit.dart';

@immutable
sealed class CountdownState {}

final class CountdownInitial extends CountdownState {}

final class LoadEvents extends CountdownState {}
