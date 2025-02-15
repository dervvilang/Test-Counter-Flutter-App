import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Rajdhani',
        primaryColor: Colors.lightBlue,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color.fromARGB(255, 142, 193, 238),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 64, 154, 228),
          foregroundColor: const Color.fromARGB(255, 220, 237, 251),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Counter',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tap "-" to decrement',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              CounterWidget(),
              SizedBox(height: 10),
              Text(
                'Tap "+" to increment',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 50;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 220, 237, 251),
        borderRadius: BorderRadius.circular(5),
      ),
      constraints: BoxConstraints(maxWidth: 160),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: _decrementCounter,
            icon: const Icon(Icons.remove),
          ),
          SizedBox(width: 10),
          Text(
            '$_counter',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(width: 10),
          IconButton(
            onPressed: _incrementCounter,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
