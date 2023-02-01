import 'dart:math';

import 'package:bullseye/game_history_data.dart';
import 'package:bullseye/game_score_data.dart';
import 'package:bullseye/prompt.dart';
import 'package:bullseye/score.dart';
import 'package:bullseye/styled_button.dart';
import 'package:flutter/material.dart';

import 'control.dart';
import 'game_model.dart';
import 'hitme_button.dart';

class GameViewWidget extends StatefulWidget {
  const GameViewWidget({super.key});

  @override
  State<GameViewWidget> createState() => _GameViewWidgetState();
}

int _newTargetValue() => Random().nextInt(100) + 1;

class _GameViewWidgetState extends State<GameViewWidget> {
  late GameModel gameModel;
  @override
  void initState() {
    super.initState();
    gameModel = GameModel(_newTargetValue());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage('images/background.png'), fit: BoxFit.cover)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 48.0, bottom: 32.0),
              child: Prompt(targetValue: gameModel.target),
            ),
            Control(
              gameModel: gameModel,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: HintMeButton(
                text: 'HIT ME',
                onPressed: () {
                  _saveGameScoreData(gameModel);
                  _showAlert(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Score(
                totalScore: gameModel.totalScore,
                round: gameModel.round,
                onStartOver: () {
                  setState(() {
                    gameModel.totalScore = GameModel.scoreStart;
                    gameModel.round = GameModel.roundStart;
                    gameModel.current = GameModel.sliderStart;
                    gameModel.target = _newTargetValue();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }

  void _showAlert(BuildContext buildContext) {
    var onButton = StyledButton(
        icon: Icons.close,
        onPressed: () {
          Navigator.of(buildContext).pop();
          setState(() {
            gameModel.totalScore += _pointsForCurrentRound();
            gameModel.target = _newTargetValue();
            gameModel.round += 1;
          });
        });

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Hello There"),
          content: Text(
              'The silder"s value is ${gameModel.current}. You scored ${_pointsForCurrentRound()}'),
          actions: [onButton],
          elevation: 5,
        );
      },
    );
  }

  int _pointsForCurrentRound() {
    const maxScore = 100;
    var targetMissedBy = gameModel.target - gameModel.current;
    var pointsForCurrentRound = maxScore - (targetMissedBy.abs());
    if (pointsForCurrentRound == 100) {
      pointsForCurrentRound += 100;
    } else if (pointsForCurrentRound == 99) {
      pointsForCurrentRound += 50;
    }
    return pointsForCurrentRound;
  }

  void _saveGameScoreData(GameModel gameModel) {
    
    /* GameScore gameScore =
        const GameScore(gameId: 1, noOfRounds: 1, gameScore: 200);
    GameScoreData gameScoreData = GameScoreData(gameScores: [gameScore]);
    var toJson = gameScoreData.toJson();
    print(toJson);

    print('------------------------------');
    var gameScoreDataFromJson = GameScoreData.fromJson(toJson);
    print(gameScoreDataFromJson); */
  }
}
