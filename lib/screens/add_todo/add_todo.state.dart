import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_todo.state.freezed.dart';

@freezed
class AddTodoState with _$AddTodoState {
  const factory AddTodoState({
    @Default(false) isLoading,
    @Default(false) important,
  }) = _Default;
}
