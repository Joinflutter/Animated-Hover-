import 'package:flutter/material.dart';
import 'package:sing_up_animation/sing_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          inputDecorationTheme: const InputDecorationTheme(
            fillColor: Colors.white,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            hoverColor: Colors.white,
            focusedBorder: InputBorder.none,
          )),
      home: const SignUpPage(),
    );
  }
}
