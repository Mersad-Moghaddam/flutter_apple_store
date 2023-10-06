import 'package:flutter/material.dart';
import 'package:flutter_apple_store/Shop/presentation/widget/bottom_nav.dart';

class BodyPage extends StatefulWidget {
  const BodyPage({super.key});

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BottomNav(),
    );
  }
}
