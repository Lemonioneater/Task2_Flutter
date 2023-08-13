import 'package:flutter/material.dart';
import 'package:task2_ahmedfaisal/Pages/homepage.dart';

void main()
{
  runApp(const Myappp());
}
class Myappp extends StatelessWidget {
  const Myappp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
