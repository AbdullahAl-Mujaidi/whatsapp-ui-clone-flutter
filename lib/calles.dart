
import 'package:flutter/material.dart';
import 'package:whatsapp/CallesHead.dart';
import 'package:whatsapp/Recent.dart';

class Calles extends StatelessWidget {
  const Calles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,

        title: Text(
          "Calls",
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Head(),
            Text(
              "Recent",
              style: TextStyle(fontSize: 20),
            ),
            Expanded(child: Recent())
          ],
        ),
      ),
    );
  }
}
