import 'package:flutter/material.dart';

class FabWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Floating Action Button Example'),
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: const Text(
            'Tekan tombol FAB di bawah!',
            style: TextStyle(fontSize: 18),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Tambahkan aksi ketika FAB ditekan di sini
          },
          child: const Icon(Icons.thumb_up),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }
}
