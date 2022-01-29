import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('My App'),
          backgroundColor: Colors.blue,
        ),
      ),
      initialRoute: 'login_screen',
      routes: {
        'login_screen': (context) => LoginPage(),
      },
    ),
  );
}
