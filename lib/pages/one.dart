import 'package:flutter/material.dart';

class One extends StatelessWidget {
  const One({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Page One',
          style: TextStyle(
              color: Colors.indigo, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
