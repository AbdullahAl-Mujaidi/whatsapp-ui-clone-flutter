
import 'package:flutter/material.dart';
import 'package:whatsapp/StartACall.dart';
import 'package:whatsapp/bottom_navigation.dart';
import 'package:whatsapp/chat.dart';
import 'package:whatsapp/chat_filters.dart';
import 'package:whatsapp/searchTextFaild.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Search(),
            ChatFilters(),
            Expanded(child: Chat())
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Startacall()),
          );
        },
      ),
    );
  }
}
