import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'game_history_data.freezed.dart';
part 'game_history_data.g.dart';

@Freezed()
class GameScore with _$GameScore {
  const factory GameScore({
    required int gameId,
    required int noOfRounds,
    required int gameScore,
  }) = _GameScore;

  factory GameScore.fromJson(Map<String, dynamic> json) =>
      _$GameScoreFromJson(json);
}
