import 'package:flutter/material.dart';

class HintMeButton extends StatelessWidget {
  const HintMeButton({super.key, required this.text, required this.onPressed});

  final String text;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: Colors.red[700],
      splashColor: Colors.redAccent,
      // ignore: sort_child_properties_last
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Text(
          text,
          maxLines: 1,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0),
        ),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: const BorderSide(color: Colors.white)),
    );
  }
}
