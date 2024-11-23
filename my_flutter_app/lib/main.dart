import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/profile_screen.dart';
import 'providers/auth_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Menyediakan AuthProvider untuk seluruh widget dalam aplikasi
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          // Rute untuk navigasi antar halaman
          '/': (context) => SplashScreen(),
          '/login': (context) => LoginScreen(),
          '/profile': (context) => ProfileScreen(),
        },
      ),
    );
  }
}
