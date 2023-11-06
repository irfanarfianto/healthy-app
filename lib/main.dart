import 'package:flutter/material.dart';
import 'SignInScreen.dart';
import 'SignUpScreen.dart';
import 'BMICalculatorScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ujian Tengah Semester V'),
        ),
        body: MyCardList(),
      ),
      routes: {
        '/signin': (context) =>
            SignInScreen(), // Ganti dengan widget tampilan Sign In yang telah dibuat
        '/signup': (context) =>
            SignUpScreen(), // Ganti dengan widget tampilan Sign Up yang telah dibuat
        '/bmi_calculator': (context) =>
            BMICalculatorScreen(), // Ganti dengan widget tampilan Kalkulator BMI yang telah dibuat
      },
    );
  }
}

class MyCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        MyCard(
          title: 'Sign In',
          description: 'Tampilan User Login',
          color: Colors.blue,
          routeName: '/signin',
        ),
        MyCard(
          title: 'Sign Up',
          description: 'Tampilan User Register',
          color: Colors.green,
          routeName: '/signup',
        ),
        MyCard(
          title: 'Kalkulator BMI',
          description: 'Hitung Indeks Massa Tubuh Anda',
          color: Colors.orange,
          routeName: '/bmi_calculator',
        ),
      ],
    );
  }
}

class MyCard extends StatelessWidget {
  final String title;
  final String description;
  final Color color;
  final String routeName;

  MyCard({
    required this.title,
    required this.description,
    required this.color,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: InkWell(
        onTap: () {
          // Navigate to the selected route
          Navigator.of(context).pushNamed(routeName);
        },
        child: Container(
          color: color,
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
