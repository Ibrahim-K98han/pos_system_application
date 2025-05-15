import 'package:flutter/material.dart';

class HomeAfterLoginScreen extends StatefulWidget {
  const HomeAfterLoginScreen({super.key});

  @override
  State<HomeAfterLoginScreen> createState() => _HomeAfterLoginScreenState();
}

class _HomeAfterLoginScreenState extends State<HomeAfterLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Home After Login'),),
    );
  }
}