import 'package:freezed_annotation/freezed_annotation.dart';
import '../../database/db.export.dart';

part 'home.state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(true) isLoading,
    @Default([]) List<TODOModel> todaysTodo,
    @Default([]) List<TODOModel> tomorrowsTodo,
    @Default([]) List<TODOModel> overDueTodo,
    @Default([]) List<TODOModel> importantTodo,
    @Default([]) List<TODOModel> completedTodo,
  }) = _Default;
}
