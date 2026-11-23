
import 'package:flutter/material.dart';
import 'package:whatsapp/Status.dart';
import 'package:whatsapp/channels.dart';
import 'package:whatsapp/recentUpdate.dart';

class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,

        title: Text(
          "Update",
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
        padding: EdgeInsets.only(top: 8, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Status(),

            Text(
              "recent Update",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),

            Expanded(child: Recentupdate()),

            Text(
              "Channels",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),

            Expanded(child: Channels())
          ],
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.edit),
            backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
            foregroundColor: Theme.of(context).colorScheme.onSurface,
          ),

          SizedBox(height: 15),

          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add_a_photo),
            backgroundColor: Theme.of(context).colorScheme.onSecondary,
          )
        ],
      ),
    );
  }
}
