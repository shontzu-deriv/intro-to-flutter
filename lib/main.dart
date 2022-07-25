import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        // secondary: Colors.green,
      ),
      home: const MyHomePage(title: 'Introduction to Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

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

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              'You have pushed the button $_counter times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            // const ElevatedButton(
            //   onPressed: () {},
            //   child: Text('A bit Longer'),
            // ),
            // const ElevatedButton(
            //   onPressed: () {},
            //   child: Text('The Longest text button'),
            // ),
          ],
        ),
      ),

      floatingActionButton:
        // padding: const EdgeInsets(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _decrementCounter,
            backgroundColor: Colors.red,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width:5,
          ),
          FloatingActionButton(
            onPressed: _resetCounter,
            backgroundColor: Colors.blue,
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(
            width:5,
          ),
            FloatingActionButton(
              onPressed: _incrementCounter,
              backgroundColor: Colors.green,
              child: const Icon(Icons.add),
            ),
          ],
        ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
