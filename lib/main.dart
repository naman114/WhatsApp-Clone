import 'package:flutter/material.dart';
import 'homepage.dart';

void main() => runApp(WhatsApp());

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF075E54),
        primaryColorLight: Color(0xFF08D261),
      ),
      home: HomePage(),
    );
  }
}
