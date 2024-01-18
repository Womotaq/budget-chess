// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'challenge_sorter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChallengeSorterState _$ChallengeSorterStateFromJson(Map<String, dynamic> json) {
  return _ChallengeSorterState.fromJson(json);
}

/// @nodoc
mixin _$ChallengeSorterState {
  Speed? get speed => throw _privateConstructorUsedError;
  bool get budgetAsc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChallengeSorterStateCopyWith<ChallengeSorterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengeSorterStateCopyWith<$Res> {
  factory $ChallengeSorterStateCopyWith(ChallengeSorterState value,
          $Res Function(ChallengeSorterState) then) =
      _$ChallengeSorterStateCopyWithImpl<$Res, ChallengeSorterState>;
  @useResult
  $Res call({Speed? speed, bool budgetAsc});
}

/// @nodoc
class _$ChallengeSorterStateCopyWithImpl<$Res,
        $Val extends ChallengeSorterState>
    implements $ChallengeSorterStateCopyWith<$Res> {
  _$ChallengeSorterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = freezed,
    Object? budgetAsc = null,
  }) {
    return _then(_value.copyWith(
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as Speed?,
      budgetAsc: null == budgetAsc
          ? _value.budgetAsc
          : budgetAsc // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChallengeSorterStateImplCopyWith<$Res>
    implements $ChallengeSorterStateCopyWith<$Res> {
  factory _$$ChallengeSorterStateImplCopyWith(_$ChallengeSorterStateImpl value,
          $Res Function(_$ChallengeSorterStateImpl) then) =
      __$$ChallengeSorterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Speed? speed, bool budgetAsc});
}

/// @nodoc
class __$$ChallengeSorterStateImplCopyWithImpl<$Res>
    extends _$ChallengeSorterStateCopyWithImpl<$Res, _$ChallengeSorterStateImpl>
    implements _$$ChallengeSorterStateImplCopyWith<$Res> {
  __$$ChallengeSorterStateImplCopyWithImpl(_$ChallengeSorterStateImpl _value,
      $Res Function(_$ChallengeSorterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = freezed,
    Object? budgetAsc = null,
  }) {
    return _then(_$ChallengeSorterStateImpl(
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as Speed?,
      budgetAsc: null == budgetAsc
          ? _value.budgetAsc
          : budgetAsc // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChallengeSorterStateImpl extends _ChallengeSorterState {
  _$ChallengeSorterStateImpl({this.speed, this.budgetAsc = true}) : super._();

  factory _$ChallengeSorterStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChallengeSorterStateImplFromJson(json);

  @override
  final Speed? speed;
  @override
  @JsonKey()
  final bool budgetAsc;

  @override
  String toString() {
    return 'ChallengeSorterState(speed: $speed, budgetAsc: $budgetAsc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengeSorterStateImpl &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.budgetAsc, budgetAsc) ||
                other.budgetAsc == budgetAsc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, speed, budgetAsc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengeSorterStateImplCopyWith<_$ChallengeSorterStateImpl>
      get copyWith =>
          __$$ChallengeSorterStateImplCopyWithImpl<_$ChallengeSorterStateImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChallengeSorterStateImplToJson(
      this,
    );
  }
}

abstract class _ChallengeSorterState extends ChallengeSorterState {
  factory _ChallengeSorterState({final Speed? speed, final bool budgetAsc}) =
      _$ChallengeSorterStateImpl;
  _ChallengeSorterState._() : super._();

  factory _ChallengeSorterState.fromJson(Map<String, dynamic> json) =
      _$ChallengeSorterStateImpl.fromJson;

  @override
  Speed? get speed;
  @override
  bool get budgetAsc;
  @override
  @JsonKey(ignore: true)
  _$$ChallengeSorterStateImplCopyWith<_$ChallengeSorterStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
