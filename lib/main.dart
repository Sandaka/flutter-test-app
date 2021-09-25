// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
      debugShowCheckedModeBanner: false, // To remove the debug lable
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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

          // flexibleSpace: Image.asset(
          //   "assets/back1.jpeg",
          //   fit: BoxFit.cover,
          // ),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.directions_car),
                text: 'Car tab',
              ),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          elevation: 12.0, //drop shadow
          backgroundColor: Colors.cyan,
        ),
        body: TabBarView(
          children: [
            loadWidgetForTab1(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

Widget loadWidgetForTab1() {
  // ignore: avoid_unnecessary_containers
  return Container(
    child: Center(
      child: Text('First tab view'),
    ),
  );
}
