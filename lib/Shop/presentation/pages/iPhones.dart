import 'package:flutter/material.dart';

class IphonePage extends StatelessWidget {
  const IphonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "iPhone Page",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: "iran_sens"),
        ),
      ),
    );
  }
}
