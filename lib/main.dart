import 'package:flutter/material.dart';
import 'package:friday_ui/shimmer_effect.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//  this code is written in Dart language
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShimmerEffects(),
    );
  }
}
