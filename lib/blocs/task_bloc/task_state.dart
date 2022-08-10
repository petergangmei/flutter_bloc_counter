part of 'task_bloc.dart';

abstract class TaskState extends Equatable {
  const TaskState();
  
  @override
  List<Object> get props => [];
}

class TaskLoadingState extends TaskState {}
class TaskLoadedState extends TaskState {}
