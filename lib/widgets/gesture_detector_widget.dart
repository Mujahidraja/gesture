import 'package:flutter/material.dart';

class GestureDetectorWidget extends StatefulWidget {
  @override
  _GestureDetectorWidgetState createState() => _GestureDetectorWidgetState();
}

class _GestureDetectorWidgetState extends State<GestureDetectorWidget> {
  String _gestureDetected = 'No Gesture Detected';

  void displayGestureDetected(String gesture) {
    setState(() {
      _gestureDetected = gesture;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => displayGestureDetected('Tap'),
      onDoubleTap: () => displayGestureDetected('Double Tap'),
      onLongPress: () => displayGestureDetected('Long Press'),
      onPanUpdate: (details) => displayGestureDetected('Pan Update'),
      child: Container(
        color: Colors.lightGreen.shade100,
        width: double.infinity,
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.access_alarm, size: 98.0),
            Text(_gestureDetected),
          ],
        ),
      ),
    );
  }
}
