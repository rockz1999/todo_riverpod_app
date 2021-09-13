import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/database/db.export.dart';

part 'todo_viewable_list.state.freezed.dart';

@freezed
class TodoVIewableListState with _$TodoVIewableListState {
  const factory TodoVIewableListState({
    @Default(true) isLoading,
    @Default([]) List<TODOModel> todos,
  }) = _Default;
}
