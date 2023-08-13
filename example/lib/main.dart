import 'package:flutter/material.dart';
import 'package:fullscreen_scroll_view/fullscreen_scroll_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('fullscreen_scroll_view demo'),
      ),
      body: FullScreenScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'The button is always placed at the bottom of ScrollView',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            for (var i = 0; i < _counter; i++) ListTile(title: Text('$i')),
            const Expanded(child: SizedBox.shrink()),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Row(
                children: [Icon(Icons.add), Text('Add widget')],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
