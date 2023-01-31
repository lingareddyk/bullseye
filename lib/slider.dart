import 'package:bullseye/game_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Control extends StatefulWidget {
  const Control({super.key, required this.gameModel});

  final GameModel gameModel;

  @override
  State<Control> createState() => _ControlState();
}

class _ControlState extends State<Control> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text('1'),
        ),
        Expanded(
          child: Slider(
            value: widget.gameModel.current.toDouble(),
            onChanged: (value) {
              setState(() {
                widget.gameModel.current = value.toInt();
              });
            },
            min: 1.0,
            max: 100.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text('100'),
        ),
      ],
    );
  }
}
