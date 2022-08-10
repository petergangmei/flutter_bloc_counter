import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskLoadingState()) {
    on<ShowTask>((event, emit) => emit(TaskLoadedState()));
    on<AddTask>((event, emit) => null);
    on<RemoveTask>((event,emit)=>null);
  }
}
