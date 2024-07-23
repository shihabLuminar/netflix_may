import 'package:flutter/material.dart';

import 'package:netflix_may/view/spalsh_screen/spalsh_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpalshScreen(),
    );
  }
}
