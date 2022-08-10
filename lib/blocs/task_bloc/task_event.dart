part of 'task_bloc.dart';

abstract class TaskEvent extends Equatable {
  const TaskEvent();

  @override
  List<Object> get props => [];
}
class ShowTask extends TaskEvent{}

class AddTask extends TaskEvent{}

class RemoveTask extends TaskEvent{}