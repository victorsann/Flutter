
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvents {}

class IncrementEvent extends CounterEvents {}

class CounterBloc extends Bloc<CounterEvents, int> {

   CounterBloc(int initialState) : super(initialState) {
     on<IncrementEvent>((event, emit) {
       emit(state + 1);
     });
   }

}