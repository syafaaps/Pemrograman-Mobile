import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengambil warna primary dari theme
    final primaryColor = Theme.of(context).colorScheme.primary;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpeg'), // Menggunakan gambar bg.jpeg dari folder assets
            fit: BoxFit.cover, // Membuat gambar menutupi seluruh background
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Ikon yang diperbarui dengan ikon yang lebih menarik
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8), // Tambahkan transparansi untuk estetika
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 15,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.star, // Mengganti ikon menjadi bintang
                      size: 80,
                      color: Colors.amber, // Mengubah warna ikon menjadi kuning keemasan
                    ),
                  ),
                  const SizedBox(height: 40),
                  // Teks yang diperbarui dengan gaya yang lebih menarik
                  Text(
                    'Selamat Datang',
                    style: GoogleFonts.poppins(
                      fontSize: 36, // Ukuran font lebih besar
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black.withOpacity(0.5),
                          offset: const Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Siap untuk Menjelajah?',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white70,
                      letterSpacing: 1.2, // Menambahkan spasi antar huruf
                    ),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: primaryColor, // Tombol putih dengan teks warna primary
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // Membuat tombol lebih bulat
                      ),
                      elevation: 5, // Menambahkan elevasi untuk efek bayangan
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold), // Gaya teks yang lebih menonjol
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
