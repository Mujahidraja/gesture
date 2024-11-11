import 'package:flutter/material.dart';
import 'gesture_detector_screen.dart';
import 'draggable_screen.dart';
import 'scale_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Gesture Demo')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Gesture Detector Example'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GestureDetectorScreen()),
            ),
          ),
          ListTile(
            title: Text('Draggable Example'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DraggableScreen()),
            ),
          ),
          ListTile(
            title: Text('Scaling Example'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScaleScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
