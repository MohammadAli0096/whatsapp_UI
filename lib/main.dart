import 'package:flutter/material.dart';
import 'package:whatsapp/screens/home_screen.dart';

void main() {
  runApp(Whatsapp());
}

class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
