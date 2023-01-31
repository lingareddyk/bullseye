import 'package:bullseye/game_model.dart';
import 'package:bullseye/prompt.dart';
import 'package:bullseye/score.dart';
import 'package:bullseye/slider.dart';
import 'package:flutter/foundation.dart';
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
  bool _alertIsVisible = false;
  late GameModel gameModel;

  @override
  void initState() {
    super.initState();
    gameModel = GameModel(50);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Prompt(targetValue: 100),
            Control(
              gameModel: gameModel,
            ),
            TextButton(
              onPressed: () {
                _alertIsVisible = true;
                _showAlert(context);
              },
              child: const Text(
                'Hit me!',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            Score(totalScore: gameModel.totalScore, round: gameModel.round),
          ],
        ),
      ),
    );
  }

  void _showAlert(BuildContext buildContext) {
    var onButton = TextButton(
        onPressed: () {
          Navigator.of(buildContext).pop();
          _alertIsVisible = false;
          print('Awesome presses! $_alertIsVisible');
        },
        child: const Text("Awesome!!"));

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Hello There"),
          content: Text('Current Score ${gameModel.current}'),
          actions: [onButton],
          elevation: 5,
        );
      },
    );
  }
}
