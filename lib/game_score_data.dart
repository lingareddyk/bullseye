import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'game_history_data.dart';
part 'game_score_data.freezed.dart';
part 'game_score_data.g.dart';

@Freezed()
class GameScoreData with _$GameScoreData {
  const factory GameScoreData({
    required List<GameScore> gameScores,
  }) = _GameScoreData;


  factory GameScoreData.fromJson(Map<String, dynamic> json) =>
      _$GameScoreDataFromJson(json);
}
