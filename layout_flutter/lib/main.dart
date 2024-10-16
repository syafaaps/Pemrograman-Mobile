import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    // Langkah 4: Implementasi title row
    Widget titleSection = Container(
      padding: const EdgeInsets.all(
          32), // Padding di sepanjang setiap tepinya 32 piksel
      child: Row(
        children: [
          Expanded(
            /* soal 1 */
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Posisi kolom di awal baris
              children: [
                /* soal 2 */
                Container(
                  padding: const EdgeInsets.only(
                      bottom: 8), // Padding bawah 8 piksel
                  child: const Text(
                    'Pura Uluwatu Bali',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Pecatu, Kec. Kuta Sel,Kab. Badung, Bali, Indonesia',
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

//Prak 2 Langkah 1: Buat method Column _buildButtonColumn
    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

  //Prak 2 Langkah 2: Buat widget buttonSection
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

   //Prak 3 Langkah 1: Buat widget textSection
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Pura Luhur Uluwatu terletak di Desa Pecatu, Kuta Selatan, Badung, Bali. '
        'Pura ini berdiri di atas tebing setinggi 97 meter yang menjorok ke laut dan merupakan salah satu Pura Sad Kayangan, dipercaya sebagai penyangga 9 mata angin oleh umat Hindu. '
        'Awalnya, pura ini digunakan untuk memuja Empu Kuturan, seorang pendeta suci abad ke-11, dan kemudian Dang Hyang Nirartha yang mencapai moksa di sini, yang menginspirasi nama "Luhur Uluwatu." '
        'Selain menjadi tempat ibadah, Pura Uluwatu juga terkenal dengan Pantai Pecatu di bawahnya, yang menjadi destinasi selancar internasional.'
        'Syava Aprilia 2241760129',
        softWrap: true,
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
              titleSection, // Bagian judul
              buttonSection, // Bagian tombol
              textSection, // Bagian teks

            ],
          ),
        ),
      ),
    );
  }
}
