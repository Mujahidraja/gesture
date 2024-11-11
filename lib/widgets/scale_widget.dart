import 'package:flutter/material.dart';

class ScaleWidget extends StatefulWidget {
  @override
  _ScaleWidgetState createState() => _ScaleWidgetState();
}

class _ScaleWidgetState extends State<ScaleWidget> {
  Offset _currentOffset = Offset.zero;
  double _currentScale = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onScaleStart: (details) {
        setState(() {
          _currentOffset = details.focalPoint;
        });
      },
      onScaleUpdate: (details) {
        setState(() {
          _currentScale = details.scale;
          _currentOffset = details.focalPoint;
        });
      },
      child: Center(
        child: Transform(
          transform: Matrix4.identity()
            ..translate(_currentOffset.dx, _currentOffset.dy)
            ..scale(_currentScale),
          child: Image.asset('assets/images/elephant.png'),
        ),
      ),
    );
  }
}
