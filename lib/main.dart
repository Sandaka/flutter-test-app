import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First Flutter App"),
          backgroundColor: const Color.fromRGBO(10, 222, 1223, 0.8),
          // actions: <Widget>[
          //   IconButton(
          //     icon: const Icon(Icons.add_alert),
          //     tooltip: 'Show Snackbar',
          //     onPressed: () {
          //       ScaffoldMessenger.of(context).showSnackBar(
          //           const SnackBar(content: Text('This is a snackbar')));
          //     },
          //   ),
          //   IconButton(
          //     icon: const Icon(Icons.navigate_next),
          //     tooltip: 'Go to the next page',
          //     onPressed: () {
          //       Navigator.push(context, MaterialPageRoute<void>(
          //         builder: (BuildContext context) {
          //           return Scaffold(
          //             appBar: AppBar(
          //               title: const Text('Next page'),
          //             ),
          //             body: const Center(
          //               child: Text(
          //                 'This is the next page',
          //                 style: TextStyle(fontSize: 24),
          //               ),
          //             ),
          //           );
          //         },
          //       ));
          //     },
          //   ),
          // ],
        ),
        body: const Center(
          child: Text(
            "Hello Flutter!",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
