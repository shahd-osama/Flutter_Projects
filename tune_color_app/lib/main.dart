import 'package:flutter/material.dart';
import 'package:tune_color_app/screens/tune_view.dart';

void main() {
  runApp(TuneApp());
}

class TuneApp extends StatelessWidget {
    TuneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TuneViewPage(),
    );
  }
}