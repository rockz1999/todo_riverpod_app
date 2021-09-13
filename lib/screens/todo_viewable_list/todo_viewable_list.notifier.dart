part of './todo_viewable_list.screen.dart';

class TodoVIewableListNotifier extends StateNotifier<TodoVIewableListState> {
  final AutoDisposeProviderReference ref;
  TodoVIewableListNotifier(this.ref, {TodoVIewableListState? state})
      : super(state ?? const TodoVIewableListState());

  DB get db {
    return ref.read(dbProvider);
  }

  Future<void> getTodos(TodoType type) async {
    state = state.copyWith.call(isLoading: true);
    late final List<TODOModel> todos;
    await Future.delayed(const Duration(seconds: 1));
    switch (type) {
      case TodoType.COMPLETED:
        todos = db.getCompletedTodos();
        break;
      case TodoType.OVERDUE:
        todos = db.getOverDueTodos();
        break;
      case TodoType.TODAY:
        todos = db.getTodaysTodos();
        break;
      case TodoType.TOMORROW:
        todos = db.getTommorrowsTodos();
        break;
      case TodoType.IMPORTANT:
        todos = db.getImportantTodos();
        break;
      case TodoType.DEFAULT:
        todos = db.getAllTodos();
        break;
      default:
        throw UnimplementedError();
    }
    if (ref.mounted) {
      state = state.copyWith.call(isLoading: false, todos: todos);
    }
  }
}
