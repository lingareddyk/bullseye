import 'dart:math';

import 'package:bullseye/HistoryWidget.dart';
import 'package:bullseye/game_model.dart';
import 'package:bullseye/gameview.dart';
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
  int selectedRailDestination = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedRailDestination) {
      case 0:
        page = const GameViewWidget();
        break;
      case 1:
        page = const GameHistoryWidget();
        break;
      default:
        throw UnimplementedError('no widget for $selectedRailDestination');
    }

    return Scaffold(
      body: Row(
        children: [
          SafeArea(
            child: NavigationRail(
              extended: true,
              // ignore: prefer_const_literals_to_create_immutables
              backgroundColor: Colors.grey,
              // ignore: prefer_const_literals_to_create_immutables
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
              selectedIndex: selectedRailDestination,
              onDestinationSelected: (value) {
                setState(() {
                  selectedRailDestination = value;
                });
              },
            ),
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(child: page),
        ],
      ),
    );
  }
}
