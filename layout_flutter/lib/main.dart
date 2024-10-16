import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
   Widget build(BuildContext context) {
    // Langkah 4: Implementasi title row
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), // Padding di sepanjang setiap tepinya 32 piksel
      child: Row(
        children: [
          Expanded(
            /* soal 1 */
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Posisi kolom di awal baris
              children: [
                /* soal 2 */
                Container(
                  padding: const EdgeInsets.only(bottom: 8), // Padding bawah 8 piksel
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey, // Teks berwarna abu-abu
                  ),
                ),
              ],
            ),
          ),
          /* soal 3 */
          Icon(
            Icons.star,
            color: Colors.red, // Warna ikon bintang merah
          ),
          const Text('41'), // Teks "41"
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Syava Aprilia - 2241760129', // Nama dan NIM Anda
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Center(
          child: Column(
            children: [
              titleSection, // Ganti 'Hello World' dengan titleSection
            ],
          ),
        ),
      ),
    );
  }
}

