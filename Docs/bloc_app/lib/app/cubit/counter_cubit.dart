// ignore_for_file: file_names

import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {

  CounterCubit(int initialState) : super(initialState);

  void increment() => emit(state + 1);
  
}
