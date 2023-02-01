// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_score_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameScoreData _$GameScoreDataFromJson(Map<String, dynamic> json) {
  return _GameScoreData.fromJson(json);
}

/// @nodoc
mixin _$GameScoreData {
  List<GameScore> get gameScores => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameScoreDataCopyWith<GameScoreData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameScoreDataCopyWith<$Res> {
  factory $GameScoreDataCopyWith(
          GameScoreData value, $Res Function(GameScoreData) then) =
      _$GameScoreDataCopyWithImpl<$Res, GameScoreData>;
  @useResult
  $Res call({List<GameScore> gameScores});
}

/// @nodoc
class _$GameScoreDataCopyWithImpl<$Res, $Val extends GameScoreData>
    implements $GameScoreDataCopyWith<$Res> {
  _$GameScoreDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameScores = null,
  }) {
    return _then(_value.copyWith(
      gameScores: null == gameScores
          ? _value.gameScores
          : gameScores // ignore: cast_nullable_to_non_nullable
              as List<GameScore>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameScoreDataCopyWith<$Res>
    implements $GameScoreDataCopyWith<$Res> {
  factory _$$_GameScoreDataCopyWith(
          _$_GameScoreData value, $Res Function(_$_GameScoreData) then) =
      __$$_GameScoreDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GameScore> gameScores});
}

/// @nodoc
class __$$_GameScoreDataCopyWithImpl<$Res>
    extends _$GameScoreDataCopyWithImpl<$Res, _$_GameScoreData>
    implements _$$_GameScoreDataCopyWith<$Res> {
  __$$_GameScoreDataCopyWithImpl(
      _$_GameScoreData _value, $Res Function(_$_GameScoreData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameScores = null,
  }) {
    return _then(_$_GameScoreData(
      gameScores: null == gameScores
          ? _value._gameScores
          : gameScores // ignore: cast_nullable_to_non_nullable
              as List<GameScore>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameScoreData with DiagnosticableTreeMixin implements _GameScoreData {
  const _$_GameScoreData({required final List<GameScore> gameScores})
      : _gameScores = gameScores;

  factory _$_GameScoreData.fromJson(Map<String, dynamic> json) =>
      _$$_GameScoreDataFromJson(json);

  final List<GameScore> _gameScores;
  @override
  List<GameScore> get gameScores {
    if (_gameScores is EqualUnmodifiableListView) return _gameScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gameScores);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameScoreData(gameScores: $gameScores)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameScoreData'))
      ..add(DiagnosticsProperty('gameScores', gameScores));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameScoreData &&
            const DeepCollectionEquality()
                .equals(other._gameScores, _gameScores));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_gameScores));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameScoreDataCopyWith<_$_GameScoreData> get copyWith =>
      __$$_GameScoreDataCopyWithImpl<_$_GameScoreData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameScoreDataToJson(
      this,
    );
  }
}

abstract class _GameScoreData implements GameScoreData {
  const factory _GameScoreData({required final List<GameScore> gameScores}) =
      _$_GameScoreData;

  factory _GameScoreData.fromJson(Map<String, dynamic> json) =
      _$_GameScoreData.fromJson;

  @override
  List<GameScore> get gameScores;
  @override
  @JsonKey(ignore: true)
  _$$_GameScoreDataCopyWith<_$_GameScoreData> get copyWith =>
      throw _privateConstructorUsedError;
}
