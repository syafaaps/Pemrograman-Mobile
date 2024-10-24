import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  final String username;

  const ProfilePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView( // Menambahkan SingleChildScrollView
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg.jpeg'), // Gambar latar belakang yang sama
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            color: Colors.black54, // Overlay hitam transparan
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, size: 60, color: Color.fromARGB(255, 167, 125, 36)),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Profile Details',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            ListTile(
                              leading: const Icon(Icons.person, color: Color.fromARGB(255, 167, 125, 36)),
                              title: const Text('Username'),
                              subtitle: Text(username),
                            ),
                            const Divider(),
                            const ListTile(
                              leading: Icon(Icons.work, color: Color.fromARGB(255, 167, 125, 36)),
                              title: Text('Role'),
                              subtitle: Text('Administrator'),
                            ),
                            const Divider(),
                            const ListTile(
                              leading: Icon(Icons.email, color: Color.fromARGB(255, 167, 125, 36)),
                              title: Text('Email'),
                              subtitle: Text('syava@gmail.com'),
                            ),
                            const Divider(),
                            // Menambahkan informasi tambahan
                            const ListTile(
                              leading: Icon(Icons.phone, color: Color.fromARGB(255, 167, 125, 36)),
                              title: Text('Phone Number'),
                              subtitle: Text('+62 812-3456-7890'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
