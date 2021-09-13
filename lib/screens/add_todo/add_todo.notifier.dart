part of './add_todo.screen.dart';

class AddTodoNotifier extends StateNotifier<AddTodoState> {
  final AutoDisposeProviderReference ref;
  AddTodoNotifier(this.ref, {AddTodoState? state})
      : super(state ?? const AddTodoState());
  bool important = false;
  DB get db {
    return ref.read(dbProvider);
  }

  void addTodo(TODOModel todo, {bool edit = false}) async {
    state.copyWith.call(isLoading: true, important: important);
    edit ? await db.editTodo(todo) : await db.addTodo(todo);
    state.copyWith.call(isLoading: false, important: important);
    ref.read(homeProvider.notifier).fetchHome();
    Get.back();
  }

  void toggleImportant(bool val) {
    state.copyWith.call(isLoading: true, important: important);
    important = val;
    state.copyWith.call(isLoading: false, important: important);
  }
}
