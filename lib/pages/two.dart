import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  const Two({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Page Two',
          style: TextStyle(
              color: Colors.lightGreen, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}