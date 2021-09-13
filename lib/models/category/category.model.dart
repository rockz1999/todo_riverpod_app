import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.model.freezed.dart';
part 'category.model.g.dart';

@freezed
class TodoCategory with _$TodoCategory {
  const TodoCategory._();

  const factory TodoCategory({
    required String todoCategoryName,
    @Default(0) int completedTodos,
    @Default(0) int totalTodos,
    required DateTime date,
  }) = _TodoCategory;

  factory TodoCategory.fromJson(Map<String, dynamic> json) =>
      _$TodoCategoryFromJson(json);

  TodoCategory fromMap(Map<String, dynamic> map) {
    return TodoCategory.fromJson(map);
  }

  Map<String, dynamic> toMap() {
    return toJson();
  }
}
