// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_history_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameScore _$GameScoreFromJson(Map<String, dynamic> json) {
  return _GameScore.fromJson(json);
}

/// @nodoc
mixin _$GameScore {
  int get gameId => throw _privateConstructorUsedError;
  int get noOfRounds => throw _privateConstructorUsedError;
  int get gameScore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameScoreCopyWith<GameScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameScoreCopyWith<$Res> {
  factory $GameScoreCopyWith(GameScore value, $Res Function(GameScore) then) =
      _$GameScoreCopyWithImpl<$Res, GameScore>;
  @useResult
  $Res call({int gameId, int noOfRounds, int gameScore});
}

/// @nodoc
class _$GameScoreCopyWithImpl<$Res, $Val extends GameScore>
    implements $GameScoreCopyWith<$Res> {
  _$GameScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
    Object? noOfRounds = null,
    Object? gameScore = null,
  }) {
    return _then(_value.copyWith(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as int,
      noOfRounds: null == noOfRounds
          ? _value.noOfRounds
          : noOfRounds // ignore: cast_nullable_to_non_nullable
              as int,
      gameScore: null == gameScore
          ? _value.gameScore
          : gameScore // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameScoreCopyWith<$Res> implements $GameScoreCopyWith<$Res> {
  factory _$$_GameScoreCopyWith(
          _$_GameScore value, $Res Function(_$_GameScore) then) =
      __$$_GameScoreCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int gameId, int noOfRounds, int gameScore});
}

/// @nodoc
class __$$_GameScoreCopyWithImpl<$Res>
    extends _$GameScoreCopyWithImpl<$Res, _$_GameScore>
    implements _$$_GameScoreCopyWith<$Res> {
  __$$_GameScoreCopyWithImpl(
      _$_GameScore _value, $Res Function(_$_GameScore) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
    Object? noOfRounds = null,
    Object? gameScore = null,
  }) {
    return _then(_$_GameScore(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as int,
      noOfRounds: null == noOfRounds
          ? _value.noOfRounds
          : noOfRounds // ignore: cast_nullable_to_non_nullable
              as int,
      gameScore: null == gameScore
          ? _value.gameScore
          : gameScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameScore with DiagnosticableTreeMixin implements _GameScore {
  const _$_GameScore(
      {required this.gameId,
      required this.noOfRounds,
      required this.gameScore});

  factory _$_GameScore.fromJson(Map<String, dynamic> json) =>
      _$$_GameScoreFromJson(json);

  @override
  final int gameId;
  @override
  final int noOfRounds;
  @override
  final int gameScore;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameScore(gameId: $gameId, noOfRounds: $noOfRounds, gameScore: $gameScore)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameScore'))
      ..add(DiagnosticsProperty('gameId', gameId))
      ..add(DiagnosticsProperty('noOfRounds', noOfRounds))
      ..add(DiagnosticsProperty('gameScore', gameScore));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameScore &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.noOfRounds, noOfRounds) ||
                other.noOfRounds == noOfRounds) &&
            (identical(other.gameScore, gameScore) ||
                other.gameScore == gameScore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gameId, noOfRounds, gameScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameScoreCopyWith<_$_GameScore> get copyWith =>
      __$$_GameScoreCopyWithImpl<_$_GameScore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameScoreToJson(
      this,
    );
  }
}

abstract class _GameScore implements GameScore {
  const factory _GameScore(
      {required final int gameId,
      required final int noOfRounds,
      required final int gameScore}) = _$_GameScore;

  factory _GameScore.fromJson(Map<String, dynamic> json) =
      _$_GameScore.fromJson;

  @override
  int get gameId;
  @override
  int get noOfRounds;
  @override
  int get gameScore;
  @override
  @JsonKey(ignore: true)
  _$$_GameScoreCopyWith<_$_GameScore> get copyWith =>
      throw _privateConstructorUsedError;
}
