

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_app_with_bloc_and_cubit/models/todo_model.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(String title){
    final todo = Todo(name: title, createdAt: DateTime.now());
    state.add(todo);
    emit([...state]);
  }
}
