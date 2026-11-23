
import 'package:flutter/material.dart';
import 'package:whatsapp/contact.dart';
import 'package:whatsapp/contact_action.dart';

class Startacall extends StatelessWidget {
  const Startacall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,

        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Contact",
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary
              ),
            ),
            Text(
              "4 contacts",
              style: TextStyle(
                fontSize: 12,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContactAction(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "contact on whatsAPP",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
          Expanded(child: Contact()),
        ],
      ),
    );
  }
}
