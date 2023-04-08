import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:to_do_list/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      themeMode: ThemeMode.dark,
      title: 'ToDo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: Home(),
    );
  }
}

