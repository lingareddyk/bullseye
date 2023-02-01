// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_score_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameScoreData _$$_GameScoreDataFromJson(Map<String, dynamic> json) =>
    _$_GameScoreData(
      gameScores: (json['gameScores'] as List<dynamic>)
          .map((e) => GameScore.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GameScoreDataToJson(_$_GameScoreData instance) =>
    <String, dynamic>{
      'gameScores': instance.gameScores,
    };
