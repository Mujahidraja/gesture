import 'package:flutter/material.dart';
import '../widgets/gesture_detector_widget.dart';

class GestureDetectorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gesture Detector')),
      body: GestureDetectorWidget(),
    );
  }
}
