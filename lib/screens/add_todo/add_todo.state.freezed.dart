// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_todo.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddTodoStateTearOff {
  const _$AddTodoStateTearOff();

  _Default call({dynamic isLoading = false, dynamic important = false}) {
    return _Default(
      isLoading: isLoading,
      important: important,
    );
  }
}

/// @nodoc
const $AddTodoState = _$AddTodoStateTearOff();

/// @nodoc
mixin _$AddTodoState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  dynamic get important => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTodoStateCopyWith<AddTodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTodoStateCopyWith<$Res> {
  factory $AddTodoStateCopyWith(
          AddTodoState value, $Res Function(AddTodoState) then) =
      _$AddTodoStateCopyWithImpl<$Res>;
  $Res call({dynamic isLoading, dynamic important});
}

/// @nodoc
class _$AddTodoStateCopyWithImpl<$Res> implements $AddTodoStateCopyWith<$Res> {
  _$AddTodoStateCopyWithImpl(this._value, this._then);

  final AddTodoState _value;
  // ignore: unused_field
  final $Res Function(AddTodoState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? important = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      important: important == freezed
          ? _value.important
          : important // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$DefaultCopyWith<$Res> implements $AddTodoStateCopyWith<$Res> {
  factory _$DefaultCopyWith(_Default value, $Res Function(_Default) then) =
      __$DefaultCopyWithImpl<$Res>;
  @override
  $Res call({dynamic isLoading, dynamic important});
}

/// @nodoc
class __$DefaultCopyWithImpl<$Res> extends _$AddTodoStateCopyWithImpl<$Res>
    implements _$DefaultCopyWith<$Res> {
  __$DefaultCopyWithImpl(_Default _value, $Res Function(_Default) _then)
      : super(_value, (v) => _then(v as _Default));

  @override
  _Default get _value => super._value as _Default;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? important = freezed,
  }) {
    return _then(_Default(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      important: important == freezed ? _value.important : important,
    ));
  }
}

/// @nodoc

class _$_Default implements _Default {
  const _$_Default({this.isLoading = false, this.important = false});

  @JsonKey(defaultValue: false)
  @override
  final dynamic isLoading;
  @JsonKey(defaultValue: false)
  @override
  final dynamic important;

  @override
  String toString() {
    return 'AddTodoState(isLoading: $isLoading, important: $important)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Default &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.important, important) ||
                const DeepCollectionEquality()
                    .equals(other.important, important)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(important);

  @JsonKey(ignore: true)
  @override
  _$DefaultCopyWith<_Default> get copyWith =>
      __$DefaultCopyWithImpl<_Default>(this, _$identity);
}

abstract class _Default implements AddTodoState {
  const factory _Default({dynamic isLoading, dynamic important}) = _$_Default;

  @override
  dynamic get isLoading => throw _privateConstructorUsedError;
  @override
  dynamic get important => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DefaultCopyWith<_Default> get copyWith =>
      throw _privateConstructorUsedError;
}
