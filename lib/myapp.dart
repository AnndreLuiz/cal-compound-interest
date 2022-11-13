import 'package:comp_int_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Investimento',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
