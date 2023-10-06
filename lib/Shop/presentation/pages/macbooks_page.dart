import 'package:flutter/material.dart';

class MacbookPage extends StatefulWidget {
  const MacbookPage({super.key});

  @override
  State<MacbookPage> createState() => _MacbookPageState();
}

class _MacbookPageState extends State<MacbookPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Macbook Page",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: "iran_sens"),
        ),
      ),
    );
  }
}
