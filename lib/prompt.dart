import 'package:flutter/material.dart';
import 'text_styles.dart';

class Prompt extends StatelessWidget {
  const Prompt({super.key, required this.targetValue});

  final int targetValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Put the bullseye as close as you can to',
          style: LabelTextStyle.bodyText(context),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('$targetValue', style: TargetTextStyle.bodyText1(context),),
        ),
      ],
    );
  }
}
