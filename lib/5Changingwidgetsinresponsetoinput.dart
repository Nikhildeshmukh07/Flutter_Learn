import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 ElevatedButton(onPressed: _increment, child: Text('increment')),
                  SizedBox(
                   width: 16,
                  ),
               Text('Count is $_counter')
        ]),
      ),
    );
  }
}

class CounterDisplay extends StatelessWidget {
  final int num;

  const CounterDisplay({required this.num, super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Counter $num');
  }
}

class CounterIncrementer extends StatelessWidget {
  final VoidCallback onPresssed;

  const CounterIncrementer({required this.onPresssed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPresssed, child: Text('increment'));
  }
}

class Counter2 extends StatefulWidget {
  const Counter2({super.key});

  @override
  State<Counter2> createState() => _Counter2State();
}

class _Counter2State extends State<Counter2> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CounterIncrementer(onPresssed: _increment),
            SizedBox(width: 20),
            CounterDisplay(num: _counter)
          ],
        ),
      ),
    );
  }
}
