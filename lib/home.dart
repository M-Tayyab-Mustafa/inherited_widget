import 'package:flutter/material.dart';
import 'main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CounterWidget(
      counter: 5,
      child: Scaffold(
        body: Builder(
          builder: (BuildContext innerContext) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen())), child: const Text('New Page')),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
