import 'dart:math';

import 'package:bullseye/game_model.dart';
import 'package:bullseye/hitme_button.dart';
import 'package:bullseye/prompt.dart';
import 'package:bullseye/score.dart';
import 'package:bullseye/control.dart';
import 'package:bullseye/styled_button.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      title: 'Bullseye',
      home: GamePage(),
    ),
  );
}

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late GameModel gameModel;

  @override
  void initState() {
    super.initState();
    gameModel = GameModel(_newTargetValue());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SafeArea(
            child: NavigationRail(
              extended: false,
              // ignore: prefer_const_literals_to_create_immutables
              backgroundColor: Colors.indigo,
              destinations: [
                const NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                const NavigationRailDestination(
                  icon: Icon(Icons.history_sharp),
                  label: Text('History'),
                ),
              ],
              selectedIndex: 0,
              onDestinationSelected: (value) {
                print('selected: $value');
              },
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('images/background.png'),
                      fit: BoxFit.cover)),
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
                      padding: const EdgeInsets.all(16.0),
                      child: TextButton(
                        onPressed: () {
                          _showAlert(context);
                        },
                        child: HintMeButton(
                          text: 'HIT ME',
                          onPressed: () {
                            _showAlert(context);
                          },
                        ),
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
            ),
          ),
        ],
      ),
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

  int _newTargetValue() => Random().nextInt(100) + 1;

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
}
