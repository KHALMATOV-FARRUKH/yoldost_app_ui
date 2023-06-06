import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "SettingsScreen",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
