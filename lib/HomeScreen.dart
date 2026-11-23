
import 'package:flutter/material.dart';
import 'package:whatsapp/calles.dart';

import 'package:whatsapp/communities.dart';
import 'package:whatsapp/home.dart';
import 'package:whatsapp/update.dart';
import 'chat.dart';
import 'bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 0;

  final List<Widget> screens = [
    Home(),
    Update(),
    communities(),
    Calles()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),

      bottomNavigationBar: BottomNavigation(
        selectedIndex: selectedIndex,
        onItemSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
