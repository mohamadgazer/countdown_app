import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'countdown_state.dart';

class CountdownDartCubit extends Cubit<CountdownDartState> {
  CountdownDartCubit() : super(CountdownDartInitial());
}
