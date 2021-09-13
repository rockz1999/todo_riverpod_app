// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_viewable_list.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoVIewableListStateTearOff {
  const _$TodoVIewableListStateTearOff();

  _Default call({dynamic isLoading = true, List<TODOModel> todos = const []}) {
    return _Default(
      isLoading: isLoading,
      todos: todos,
    );
  }
}

/// @nodoc
const $TodoVIewableListState = _$TodoVIewableListStateTearOff();

/// @nodoc
mixin _$TodoVIewableListState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  List<TODOModel> get todos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoVIewableListStateCopyWith<TodoVIewableListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoVIewableListStateCopyWith<$Res> {
  factory $TodoVIewableListStateCopyWith(TodoVIewableListState value,
          $Res Function(TodoVIewableListState) then) =
      _$TodoVIewableListStateCopyWithImpl<$Res>;
  $Res call({dynamic isLoading, List<TODOModel> todos});
}

/// @nodoc
class _$TodoVIewableListStateCopyWithImpl<$Res>
    implements $TodoVIewableListStateCopyWith<$Res> {
  _$TodoVIewableListStateCopyWithImpl(this._value, this._then);

  final TodoVIewableListState _value;
  // ignore: unused_field
  final $Res Function(TodoVIewableListState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? todos = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TODOModel>,
    ));
  }
}

/// @nodoc
abstract class _$DefaultCopyWith<$Res>
    implements $TodoVIewableListStateCopyWith<$Res> {
  factory _$DefaultCopyWith(_Default value, $Res Function(_Default) then) =
      __$DefaultCopyWithImpl<$Res>;
  @override
  $Res call({dynamic isLoading, List<TODOModel> todos});
}

/// @nodoc
class __$DefaultCopyWithImpl<$Res>
    extends _$TodoVIewableListStateCopyWithImpl<$Res>
    implements _$DefaultCopyWith<$Res> {
  __$DefaultCopyWithImpl(_Default _value, $Res Function(_Default) _then)
      : super(_value, (v) => _then(v as _Default));

  @override
  _Default get _value => super._value as _Default;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? todos = freezed,
  }) {
    return _then(_Default(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TODOModel>,
    ));
  }
}

/// @nodoc

class _$_Default implements _Default {
  const _$_Default({this.isLoading = true, this.todos = const []});

  @JsonKey(defaultValue: true)
  @override
  final dynamic isLoading;
  @JsonKey(defaultValue: const [])
  @override
  final List<TODOModel> todos;

  @override
  String toString() {
    return 'TodoVIewableListState(isLoading: $isLoading, todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Default &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(todos);

  @JsonKey(ignore: true)
  @override
  _$DefaultCopyWith<_Default> get copyWith =>
      __$DefaultCopyWithImpl<_Default>(this, _$identity);
}

abstract class _Default implements TodoVIewableListState {
  const factory _Default({dynamic isLoading, List<TODOModel> todos}) =
      _$_Default;

  @override
  dynamic get isLoading => throw _privateConstructorUsedError;
  @override
  List<TODOModel> get todos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DefaultCopyWith<_Default> get copyWith =>
      throw _privateConstructorUsedError;
}
