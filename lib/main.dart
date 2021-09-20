import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder, // Add the builder here
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hi Flutter'),
        leading: IconButton(
          // ignore: prefer_const_constructors
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            // ignore: prefer_const_constructors
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            // ignore: prefer_const_constructors
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        // ignore: prefer_const_constructors
        // flexibleSpace: Icon(
        //   Icons.photo_camera,
        //   size: 75.0,
        //   color: Colors.white70,
        // ),
        flexibleSpace: Image.asset(
          "assets/back1.jpeg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
