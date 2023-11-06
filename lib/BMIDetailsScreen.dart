import 'package:flutter/material.dart';

class BMIDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail BMI'),
      ),
      body: Center(
        child: Text('Ini adalah detail untuk Index Masa Tubuh (BMI)'),
      ),
    );
  }
}
