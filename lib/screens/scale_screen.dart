import 'package:flutter/material.dart';
import '../widgets/scale_widget.dart';

class ScaleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scaling Example')),
      body: ScaleWidget(),
    );
  }
}
