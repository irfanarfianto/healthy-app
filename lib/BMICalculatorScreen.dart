import 'package:flutter/material.dart';
import 'BMIDetailsScreen.dart';
import 'EnergiBasalScreen.dart';
import 'EnergiExpenditureScreen.dart';

void main() {
  runApp(MaterialApp(
    home: BMICalculatorScreen(),
    routes: {
      '/bmi': (context) => BMIDetailsScreen(),
      '/energi_basal': (context) => EnergiBasalScreen(),
      '/energi_expenditure': (context) => EnergiExpenditureScreen(),
    },
  ));
}

class BMICalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator BMI'),
      ),
      body: DefaultTextStyle(
        style: TextStyle(fontFamily: 'Manrope'),
        child: Center(
          child: Container(
            width: 378,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Hallo, ",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF5F48E6),
                        ),
                      ),
                      Text(
                        "Selamat datang",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF5F48E6),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 378,
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Cari informasi gizi...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF5F48E6)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Card Pertama
                CardWidget(
                  title: 'Index Masa Tubuh',
                  description:
                      'Ketahui status gizimu melalui perbandingan berat badan dan tinggi badan',
                  actionText: 'Cek Sekarang',
                  backgroundColor: Color(0xFFD7D0FF),
                  onPressed: () {
                    // Navigasi ke layar baru saat card pertama diklik
                    Navigator.pushNamed(context, '/bmi');
                  },
                  height: 150,
                ),
                // Card Kedua
                CardWidget(
                  title: 'Energi Basal',
                  description:
                      'Ketahui kebutuhan energi yang dibutuhkan tubuhmu untuk menjalankan fungsi fisiologis tubuh',
                  actionText: 'Cek Sekarang',
                  backgroundColor: Color(0xFFF4C2C2),
                  onPressed: () {
                    // Navigasi ke layar baru saat card kedua diklik
                    Navigator.pushNamed(context, '/energi_basal');
                  },
                  height: 150,
                ),
                // Card Ketiga
                CardWidget(
                  title: 'Energi Expenditure',
                  description:
                      'Ketahui kebutuhan energi yang dibutuhkan tubuhmu untuk mempertahankan kehidupan',
                  actionText: 'Cek Sekarang',
                  backgroundColor: Color(0xFFC7F4C2),
                  onPressed: () {
                    // Navigasi ke layar baru saat card ketiga diklik
                    Navigator.pushNamed(context, '/energi_expenditure');
                  },
                  height: 150,
                ),
                SizedBox(height: 50.0),
                Text(
                  'Created by Irfan Arfianto',
                  style: TextStyle(color: Color(0xFF999EA1), fontSize: 10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String title;
  final String description;
  final String actionText;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final double height;
  final EdgeInsetsGeometry padding;

  CardWidget({
    required this.title,
    required this.description,
    required this.actionText,
    required this.onPressed,
    required this.backgroundColor,
    required this.height,
    this.padding = const EdgeInsets.all(10.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Card(
        margin: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: backgroundColor,
        child: Padding(
          padding: padding,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              ButtonBar(
                children: <Widget>[
                  TextButton(
                    onPressed: onPressed,
                    style: TextButton.styleFrom(
                      primary: Color(0xFF5F48E6),
                    ),
                    child: Text(actionText),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
