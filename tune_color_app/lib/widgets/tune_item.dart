import 'package:flutter/material.dart';
import 'package:tune_color_app/models/tune_model.dart';

class TuneItems extends StatelessWidget {
  const TuneItems({required this.model});
  final TuneModel model;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          model.playSound();
        },
        child: Container(width: double.infinity, color: model.color),
      ),
    );
  }
}
