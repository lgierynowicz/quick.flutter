// ignore_for_file: use_key_in_widget_constructors

import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:quick_notify/quick_notify.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: const Text('hasPermission'),
                  onPressed: () async {
                    var hasPermission = await QuickNotify.hasPermission();
                    log('hasPermission $hasPermission');
                  },
                ),
                ElevatedButton(
                  child: const Text('requestPermission'),
                  onPressed: () async {
                    var requestPermission = await QuickNotify.requestPermission();
                    log('requestPermission $requestPermission');
                  },
                ),
              ],
            ),
            ElevatedButton(
              child: const Text('notify'),
              onPressed: () {
                QuickNotify.notify(
                  title: 'My title',
                  content: 'My content',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
