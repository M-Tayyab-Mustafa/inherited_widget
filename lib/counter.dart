import 'package:flutter/material.dart';

class CounterWidget extends InheritedWidget {
  const CounterWidget({super.key, required this.counter, required super.child});
  final int counter;

  @override
  bool updateShouldNotify(covariant CounterWidget oldWidget) {
    return counter != oldWidget.counter;
  }

  static CounterWidget? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterWidget>();
  }

  static CounterWidget of(BuildContext context) {
    final CounterWidget? result = maybeOf(context);
    assert(result != null, 'No CounterWidget found in context');
    return result!;
  }
}
