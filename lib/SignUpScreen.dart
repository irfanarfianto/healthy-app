import 'package:flutter/material.dart';
import 'SignInScreen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar'),
        automaticallyImplyLeading: true, // Menampilkan tombol "Back"
      ),
      body: DefaultTextStyle(
        // Mengatur font family default untuk seluruh konten
        style: TextStyle(fontFamily: 'Manrope'),
        child: Center(
          child: SingleChildScrollView(
            // Gunakan SingleChildScrollView untuk mengatasi overflow saat keyboard muncul
            child: Padding(
              padding: const EdgeInsets.all(16.0),
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
                          'Selamat Datang!',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        Text(
                          'Daftar akun baru',
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
                  SizedBox(height: 30.0),
                  Container(
                    height: 75,
                    width: 378,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nama',
                            style: TextStyle(color: Color(0xFF5F48E6))),
                        SizedBox(height: 8.0),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Masukkan nama Anda',
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
                        Text('Nomor Telepon',
                            style: TextStyle(color: Color(0xFF5F48E6))),
                        SizedBox(height: 8.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              // Warna garis batas
                              width: 0.4, // Lebar garis batas
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 50, // Lebar kode negara
                                alignment: Alignment.center,
                                child: Text(
                                  '+62', // Ganti dengan kode negara yang sesuai
                                  style: TextStyle(
                                      color: Color(0xFF5F48E6),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              VerticalDivider(
                                color: Color.fromARGB(255, 0, 0, 0),
                                width: 5.0, // Lebar garis pemisah
                                thickness: 5.0, // Lebar garis pemisah
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Masukkan nomor telepon Anda',
                                    border: InputBorder.none,
                                  ),
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
                        Text('Email',
                            style: TextStyle(color: Color(0xFF5F48E6))),
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
                    height: 47,
                    child: ElevatedButton(
                      onPressed: () {
                        // Logika untuk proses Daftar
                      },
                      child: Text(
                        'Daftar',
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 12),
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
                        "Sudah punya akun? ",
                        style: TextStyle(
                          color: Color(0xFF999EA1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => SignInScreen(),
                            ),
                          );
                        },
                        child: Text('Masuk',
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
        ),
      ),
    );
  }
}
