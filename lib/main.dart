
import 'package:flutter/material.dart';
import 'package:whatsapp/HomeScreen.dart';

import 'package:whatsapp/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF075E36),
          secondary: Color(0xFF075E36),
          onSecondary: Color(0xFF25D366),
          primary: Colors.black87,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),

      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF075E36),
          secondary: Color(0xFF25D366),
          onSecondary: Color(0xFF25D366),
          primary: Colors.white,
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: Color(0xFF121B22),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF1F2C34),
          foregroundColor: Colors.white,
        ),
      ),

      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
