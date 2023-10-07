import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'RouteManager.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Store App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      initialRoute: '/',
      onGenerateRoute: RouteManager.generateRoute,
    );
    
  }
}

