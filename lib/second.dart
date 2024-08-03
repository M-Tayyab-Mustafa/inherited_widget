import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = CounterWidget.of(context).counter;
    return Scaffold(
      body: Center(
        child: Text(counter.toString()),
      ),
    );
  }
}
