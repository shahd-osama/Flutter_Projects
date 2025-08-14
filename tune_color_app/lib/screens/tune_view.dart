import 'package:flutter/material.dart';
import 'package:tune_color_app/models/tune_model.dart';
import 'package:tune_color_app/widgets/tune_item.dart';

class TuneViewPage extends StatelessWidget {
  TuneViewPage({super.key});

  List<TuneModel> tunes = const [
    TuneModel(color: Color.fromARGB(255, 11, 101, 211), sound: "note1.wav"),
    TuneModel(color: Color.fromARGB(255, 11, 48, 211), sound: "note5.wav"),
    TuneModel(color: Color.fromARGB(255, 109, 9, 224), sound: "note2.wav"),
    TuneModel(color: Color.fromARGB(255, 137, 0, 249) , sound: "note3.wav"),
    TuneModel(color: Color.fromARGB(255, 174, 11, 211), sound: "note4.wav"),
    TuneModel(color: Color.fromARGB(255, 211, 11, 178), sound: "note6.wav"),
    TuneModel(color: Color.fromARGB(255, 211, 11, 81), sound: "note7.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 8, 37, 60),
        title: Text(
          "Flutter Tune",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: 
        tunes.map((e) => TuneItems(model: e ,)).toList()
          ,
      ),
    );
  }
// List<TuneItems> colorItems(){
//   List<TuneItems> items = [];
//   for (var color in colors) {
//     items.add(TuneItems(color: color));
//   }
//   return items;
//  }
}
