part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  const CounterState();
  
  @override
  List<Object> get props => [];
}

class CounterInitial extends CounterState {}

class CounterValueChangedState extends CounterState{
  final int counter;
   const CounterValueChangedState({required this.counter});
   @override
  List<Object> get props => [counter];
}