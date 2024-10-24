import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        elevation: 0,
      ),
      body: Stack( // Menggunakan Stack untuk menjaga latar belakang tetap di tempat
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.jpeg'), // Menggunakan gambar latar belakang yang sama
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black54, // Overlay hitam transparan
            child: SingleChildScrollView( // Menggunakan SingleChildScrollView untuk konten
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.mobile_friendly, // Ubah icon sesuai landing page
                      size: 80,
                      color: Color.fromARGB(255, 167, 125, 36),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    'JourneyApp',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 167, 125, 36),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'JourneyApp dibuat untuk tugas UTS Pemrograman Mobile '
                    'dengan halaman seperti Landing Page, Login Page, Halaman Utama, Profile, dan About.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, height: 1.5, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  const Divider(color: Colors.white),
                  const SizedBox(height: 20),
                  Text(
                    'Fitur Utama Aplikasi',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 167, 125, 36),
                    ),
                  ),
                  const SizedBox(height: 15),
                  buildFeatureItem(
                    icon: Icons.security,
                    title: 'Keamanan Login',
                    description: 'Aplikasi memiliki sistem login untuk keamanan.',
                  ),
                  buildFeatureItem(
                    icon: Icons.phone_android,
                    title: 'Tampilan Responsif',
                    description: 'Tampilan responsif agar pengguna tetap nyaman.',
                  ),
                  buildFeatureItem(
                    icon: Icons.gradient,
                    title: 'UI Menarik',
                    description: 'Memiliki UI yang menarik dan nyaman untuk digunakan.',
                  ),
                  const SizedBox(height: 20),
                  const Divider(color: Colors.white),
                  const SizedBox(height: 20),
                  // Informasi versi
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.brown.shade100,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.info_outline,
                              size: 16,
                              color: Color.fromARGB(255, 167, 125, 36),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Version 1.0.0',
                              style: TextStyle(
                                color: Color.fromARGB(255, 167, 125, 36),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFeatureItem({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.brown.shade100,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: Colors.brown),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white, // Warna teks sesuai dengan desain
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.brown.shade300, // Ubah warna deskripsi menjadi lebih terang
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
