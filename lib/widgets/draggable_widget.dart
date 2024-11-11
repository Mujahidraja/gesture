import 'package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  @override
  _DraggableWidgetState createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  Color _paintedColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Draggable<int>(
          data: Colors.deepOrange.value,
          child: Column(
            children: [
              Icon(Icons.palette, color: Colors.deepOrange, size: 48.0),
              Text("Drag Me below to change color"),
            ],
          ),
          feedback: Icon(Icons.brush, color: Colors.deepOrange, size: 80.0),
          childWhenDragging: Icon(Icons.palette, color: Colors.grey, size: 48.0),
        ),
        SizedBox(height: 20),
        DragTarget<int>(
          onAccept: (colorValue) {
            setState(() {
              _paintedColor = Color(colorValue);
            });
          },
          builder: (context, acceptedData, rejectedData) {
            return Container(
              height: 100,
              width: 100,
              color: _paintedColor,
              child: Center(child: Text("Drag here")),
            );
          },
        ),
      ],
    );
  }
}
