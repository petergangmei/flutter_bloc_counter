import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counterv = 0;
  CounterBloc() : super(CounterInitial()) {
    on<IncreasementEvent>((event, emit) {
      counterv = counterv +1;
      emit(CounterValueChangedState(counter: counterv ));
    });
    on<DecreasementEvent> ((event, emit) {
      counterv = counterv -1;
      emit(CounterValueChangedState(counter: counterv ));
    });
  }
}
