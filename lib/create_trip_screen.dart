import 'package:flutter/material.dart';


class CreateTripScreen extends StatelessWidget {
  const CreateTripScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "CreateTripScreen",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
