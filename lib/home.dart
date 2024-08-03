import 'package:flutter/material.dart';
import 'package:inherited_widget/counter.dart';

import 'second.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CounterWidget(
      counter: 5,
      child: Scaffold(
        appBar: AppBar(title: const Text('Home Screen')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondScreen(),
                    ),
                  );
                },
                child: const Text('Go to Second Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
