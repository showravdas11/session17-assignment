import 'package:flutter/material.dart';

class Three extends StatelessWidget {
  const Three({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Page Three',
          style: TextStyle(
              color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}