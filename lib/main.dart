import 'package:flutter/material.dart';

import 'package:instagram_0/pages/register/register.dart';
import 'package:instagram_0/pages/splash/splash_pages.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashePages(),
      theme: ThemeData(useMaterial3: true),
    );
  }
}
