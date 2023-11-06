import 'package:flutter/material.dart';
import 'SignUpScreen.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tampilan SignIn'),
      ),
      body: DefaultTextStyle(
        // Mengatur font family default untuk seluruh konten
        style: TextStyle(fontFamily: 'Manrope'),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 378,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hai, Selamat Datang Kembali!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    Text(
                      'Halo lagi, Anda sudah kangen!',
                      style: TextStyle(
                        color: Color(0xFF999EA1),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.0),
              Container(
                height: 75,
                width: 378,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email', style: TextStyle(color: Color(0xFF5F48E6))),
                    SizedBox(height: 8.0),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Masukkan alamat email Anda',
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
                height: 75,
                width: 378,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Kata Sandi',
                        style: TextStyle(color: Color(0xFF5F48E6))),
                    SizedBox(height: 8.0),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Masukkan kata sandi Anda',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF5F48E6)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                width: 378,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: false,
                          onChanged: (value) {
                            // Mengganti nilai "Ingat saya"
                          },
                        ),
                        Text('Ingat Saya'),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        // Navigasi ke laman "Lupa Kata Sandi"
                      },
                      child: Text(
                        'Lupa Kata Sandi',
                        style: TextStyle(
                          color: Color(0xFFFB344F),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          height: 0,
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
                    // Logika untuk proses Masuk
                  },
                  child: Text(
                    'Masuk',
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
              SizedBox(height: 25.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Belum punya akun? ",
                    style: TextStyle(
                      color: Color(0xFF999EA1),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigasi ke laman "Sign In"
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              SignUpScreen(), // Ganti dengan laman "Sign In" yang sesuai
                        ),
                      );
                    },
                    child: Text('Daftar',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF5F48E6),
                        )),
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
