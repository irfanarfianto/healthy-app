import 'package:flutter/material.dart';

class BMIDetailsScreen extends StatefulWidget {
  @override
  _BMIDetailsScreenState createState() => _BMIDetailsScreenState();
}

class _BMIDetailsScreenState extends State<BMIDetailsScreen> {
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  bool isMaleSelected =
      true; // Menandai apakah jenis kelamin Laki-laki terpilih

  String resultText = '';
  Color resultColor = Colors.black;

  double calculateBMI() {
    double weight = double.tryParse(weightController.text) ?? 0.0;
    double height = double.tryParse(heightController.text) ?? 0.0;
    int age = int.tryParse(ageController.text) ?? 0;

    double bmi = weight / (height * height);
    String bmiCategory;

    if (bmi.isNaN) {
      var resultCategory = 'Masukkan data yang valid';
      resultColor = Colors.red;
    } else {
      if (bmi < 18.5) {
        bmiCategory = 'Kurang Berat';
        resultColor = Colors.red;
      } else if (bmi < 24.9) {
        bmiCategory = 'Normal';
        resultColor = Colors.green;
      } else if (bmi < 29.9) {
        bmiCategory = 'Kelebihan Berat';
        resultColor = Colors.orange;
      } else {
        bmiCategory = 'Obesitas';
        resultColor = Colors.red;
      }
      resultText = 'BMI Anda: ${bmi.toStringAsFixed(2)} ($bmiCategory)';
    }
    return bmi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator BMI'),
      ),
      body: DefaultTextStyle(
        // Mengatur font family default untuk seluruh konten
        style: TextStyle(fontFamily: 'Manrope'),
        child: Center(
          child: Container(
            width: 378,
            // margin: const EdgeInsets.only(top: 20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: 378,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pilih Jenis Kelamin',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 10),
                        Theme(
                          data: ThemeData(
                            toggleableActiveColor: Color(
                                0xFF5F48E6), // Ganti warna checkbox yang dicentang
                            unselectedWidgetColor: Colors
                                .grey, // Ganti warna checkbox yang tidak dicentang
                          ),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    Checkbox(
                                      value: isMaleSelected,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          isMaleSelected = newValue!;
                                        });
                                      },
                                    ),
                                    Text('Laki-laki'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    Checkbox(
                                      value: !isMaleSelected,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          isMaleSelected = !newValue!;
                                        });
                                      },
                                    ),
                                    Text('Perempuan'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    height: 75,
                    width: 378,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Berat Badan (KG)',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(height: 8.0),
                        TextField(
                          controller: weightController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Masukkan Berat Badan Anda',
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
                  SizedBox(height: 8.0),
                  Container(
                    height: 75,
                    width: 378,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Tinggi Badan (CM)',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(height: 8.0),
                        TextField(
                          controller: heightController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Masukkan Tinggi Badan Anda',
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
                  SizedBox(height: 8.0),
                  Container(
                    height: 75,
                    width: 378,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Usia (tahun)',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(height: 8.0),
                        TextField(
                          controller: ageController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Masukkan Umur Anda Sekarang',
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
                  SizedBox(height: 16.0),
                  Container(
                    width: 378,
                    height: 47,
                    child: ElevatedButton(
                      onPressed: () {
                        calculateBMI();
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Hasil BMI'),
                              content: Text(resultText),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text(
                        'Lihat Hasil',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          height: 0,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF5F48E6),
                        padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 12), // Atur padding sesuai kebutuhan Anda
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
