// ignore_for_file: prefer_const_constructors

// ignore: depend_on_referenced_packages
import 'package:app/Pages/ReadMore.dart';
import 'package:flutter/material.dart';

import 'Pages/HomePage.dart';
import 'Pages/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Blood Doantion",
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        "/": (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/readmore': (context) => const ReadMore(),
      },
    );
  }
}
