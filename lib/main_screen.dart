import 'package:flutter/material.dart';
import 'package:stful_task/cache.dart';
import 'package:stful_task/counter_card.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<StatefulWidget> createState() => MainScreenPageState();
}

class MainScreenPageState extends State<MainScreen> {

  update() {
    setState(() {
      globalCounter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 16,
          children: [
            CounterCard(),
            CounterCard(),
            CounterCard(),
            CounterCard(),
            CounterCard(),
            Card(
              child: Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Text('Gesamt Counter'),
                    Text(globalCounter.toString())
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}