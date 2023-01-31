import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  const Score({Key? key, required this.totalScore, required this.round}) 
  : super(key: key);

  final int totalScore;
  final int round;

  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {
                  
                }, child: const Text("Start Over!!")),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text('Score: '),
                      const Text('99999'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text('Round: '),
                      const Text('999'),
                    ],
                  ),
                ),
                TextButton(onPressed: () {
                  
                }, child: const Text('Info')),
              ],
            );
  }
}
