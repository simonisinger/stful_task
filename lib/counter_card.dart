import 'package:flutter/material.dart';
import 'package:stful_task/cache.dart';
import 'package:stful_task/main_screen.dart';

class CounterCard extends StatefulWidget {
  final int number;
  const CounterCard({super.key, this.number = 0});

  @override
  State<StatefulWidget> createState() => _CounterCardState();
}

class _CounterCardState extends State<CounterCard> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Zähler: $number'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  number++;
                  globalCounter++;
                  (mainScreenKey.currentState as MainScreenPageState).update();
                });
              },
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
