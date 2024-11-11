import 'package:flutter/material.dart';
import '../widgets/draggable_widget.dart';

class DraggableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Draggable Example')),
      body: DraggableWidget(),
    );
  }
}
