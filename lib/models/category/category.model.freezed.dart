// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoCategory _$TodoCategoryFromJson(Map<String, dynamic> json) {
  return _TodoCategory.fromJson(json);
}

/// @nodoc
class _$TodoCategoryTearOff {
  const _$TodoCategoryTearOff();

  _TodoCategory call(
      {required String todoCategoryName,
      int completedTodos = 0,
      int totalTodos = 0,
      required DateTime date}) {
    return _TodoCategory(
      todoCategoryName: todoCategoryName,
      completedTodos: completedTodos,
      totalTodos: totalTodos,
      date: date,
    );
  }

  TodoCategory fromJson(Map<String, Object> json) {
    return TodoCategory.fromJson(json);
  }
}

/// @nodoc
const $TodoCategory = _$TodoCategoryTearOff();

/// @nodoc
mixin _$TodoCategory {
  String get todoCategoryName => throw _privateConstructorUsedError;
  int get completedTodos => throw _privateConstructorUsedError;
  int get totalTodos => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoCategoryCopyWith<TodoCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCategoryCopyWith<$Res> {
  factory $TodoCategoryCopyWith(
          TodoCategory value, $Res Function(TodoCategory) then) =
      _$TodoCategoryCopyWithImpl<$Res>;
  $Res call(
      {String todoCategoryName,
      int completedTodos,
      int totalTodos,
      DateTime date});
}

/// @nodoc
class _$TodoCategoryCopyWithImpl<$Res> implements $TodoCategoryCopyWith<$Res> {
  _$TodoCategoryCopyWithImpl(this._value, this._then);

  final TodoCategory _value;
  // ignore: unused_field
  final $Res Function(TodoCategory) _then;

  @override
  $Res call({
    Object? todoCategoryName = freezed,
    Object? completedTodos = freezed,
    Object? totalTodos = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      todoCategoryName: todoCategoryName == freezed
          ? _value.todoCategoryName
          : todoCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      completedTodos: completedTodos == freezed
          ? _value.completedTodos
          : completedTodos // ignore: cast_nullable_to_non_nullable
              as int,
      totalTodos: totalTodos == freezed
          ? _value.totalTodos
          : totalTodos // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$TodoCategoryCopyWith<$Res>
    implements $TodoCategoryCopyWith<$Res> {
  factory _$TodoCategoryCopyWith(
          _TodoCategory value, $Res Function(_TodoCategory) then) =
      __$TodoCategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String todoCategoryName,
      int completedTodos,
      int totalTodos,
      DateTime date});
}

/// @nodoc
class __$TodoCategoryCopyWithImpl<$Res> extends _$TodoCategoryCopyWithImpl<$Res>
    implements _$TodoCategoryCopyWith<$Res> {
  __$TodoCategoryCopyWithImpl(
      _TodoCategory _value, $Res Function(_TodoCategory) _then)
      : super(_value, (v) => _then(v as _TodoCategory));

  @override
  _TodoCategory get _value => super._value as _TodoCategory;

  @override
  $Res call({
    Object? todoCategoryName = freezed,
    Object? completedTodos = freezed,
    Object? totalTodos = freezed,
    Object? date = freezed,
  }) {
    return _then(_TodoCategory(
      todoCategoryName: todoCategoryName == freezed
          ? _value.todoCategoryName
          : todoCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      completedTodos: completedTodos == freezed
          ? _value.completedTodos
          : completedTodos // ignore: cast_nullable_to_non_nullable
              as int,
      totalTodos: totalTodos == freezed
          ? _value.totalTodos
          : totalTodos // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoCategory extends _TodoCategory {
  const _$_TodoCategory(
      {required this.todoCategoryName,
      this.completedTodos = 0,
      this.totalTodos = 0,
      required this.date})
      : super._();

  factory _$_TodoCategory.fromJson(Map<String, dynamic> json) =>
      _$$_TodoCategoryFromJson(json);

  @override
  final String todoCategoryName;
  @JsonKey(defaultValue: 0)
  @override
  final int completedTodos;
  @JsonKey(defaultValue: 0)
  @override
  final int totalTodos;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'TodoCategory(todoCategoryName: $todoCategoryName, completedTodos: $completedTodos, totalTodos: $totalTodos, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoCategory &&
            (identical(other.todoCategoryName, todoCategoryName) ||
                const DeepCollectionEquality()
                    .equals(other.todoCategoryName, todoCategoryName)) &&
            (identical(other.completedTodos, completedTodos) ||
                const DeepCollectionEquality()
                    .equals(other.completedTodos, completedTodos)) &&
            (identical(other.totalTodos, totalTodos) ||
                const DeepCollectionEquality()
                    .equals(other.totalTodos, totalTodos)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(todoCategoryName) ^
      const DeepCollectionEquality().hash(completedTodos) ^
      const DeepCollectionEquality().hash(totalTodos) ^
      const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  _$TodoCategoryCopyWith<_TodoCategory> get copyWith =>
      __$TodoCategoryCopyWithImpl<_TodoCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoCategoryToJson(this);
  }
}

abstract class _TodoCategory extends TodoCategory {
  const factory _TodoCategory(
      {required String todoCategoryName,
      int completedTodos,
      int totalTodos,
      required DateTime date}) = _$_TodoCategory;
  const _TodoCategory._() : super._();

  factory _TodoCategory.fromJson(Map<String, dynamic> json) =
      _$_TodoCategory.fromJson;

  @override
  String get todoCategoryName => throw _privateConstructorUsedError;
  @override
  int get completedTodos => throw _privateConstructorUsedError;
  @override
  int get totalTodos => throw _privateConstructorUsedError;
  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TodoCategoryCopyWith<_TodoCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
