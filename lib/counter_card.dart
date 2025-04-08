import 'package:flutter/material.dart';

class CounterCard extends StatelessWidget {
  const CounterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Zähler: 0'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
