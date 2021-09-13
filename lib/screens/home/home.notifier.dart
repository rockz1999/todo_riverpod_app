part of './home.screen.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  final AutoDisposeProviderReference ref;
  HomeNotifier(this.ref, {HomeState? state})
      : super(state ?? const HomeState());

  DB get db {
    return ref.read(dbProvider);
  }

  Future<void> fetchHome() async {
    state = state.copyWith.call(isLoading: true);
    await Future.delayed(const Duration(seconds: 1));
    final todayTodos = db.getTodaysTodos();
    final tomorrowTodos = db.getTommorrowsTodos();
    final importantTodos = db.getImportantTodos();
    final completedTodos = db.getCompletedTodos();
    final overdueTodos = db.getOverDueTodos();
    if (ref.mounted) {
      state = state.copyWith.call(
        completedTodo: completedTodos,
        importantTodo: importantTodos,
        isLoading: false,
        overDueTodo: overdueTodos,
        todaysTodo: todayTodos,
        tomorrowsTodo: tomorrowTodos,
      );
    }
  }
}
