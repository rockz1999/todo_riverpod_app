// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoCategory _$$_TodoCategoryFromJson(Map<String, dynamic> json) =>
    _$_TodoCategory(
      todoCategoryName: json['todoCategoryName'] as String,
      completedTodos: json['completedTodos'] as int? ?? 0,
      totalTodos: json['totalTodos'] as int? ?? 0,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_TodoCategoryToJson(_$_TodoCategory instance) =>
    <String, dynamic>{
      'todoCategoryName': instance.todoCategoryName,
      'completedTodos': instance.completedTodos,
      'totalTodos': instance.totalTodos,
      'date': instance.date.toIso8601String(),
    };
