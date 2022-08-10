part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class IncreasementEvent extends CounterEvent{}
class DecreasementEvent extends CounterEvent{}