
import 'package:flutter/material.dart';

class Recentupdate extends StatefulWidget {
  const Recentupdate({super.key});

  @override
  State<Recentupdate> createState() => _RecentupdateState();
}

class _RecentupdateState extends State<Recentupdate> {
  List<Map<String, dynamic>> update = [
    {
      "name": "Abdullah",
      "content": "good morning",
      "date": "7:10 am",
      "color": const Color.fromARGB(255, 2, 228, 40)
    },
    {
      "name": "Mohammed",
      "content": "good morning",
      "date": "10:10 am",
      "color": const Color.fromARGB(255, 228, 171, 2)
    },
    {
      "name": "Abdullah",
      "content": "good morning",
      "date": "7:10 am",
      "color": const Color.fromARGB(255, 52, 7, 255)
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: update.length,
      itemBuilder: (context, index) => ListTile(
        contentPadding: EdgeInsets.zero,

        leading: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 2,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: update[index]["color"],
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 010,
                  horizontal: 10,
                ),
                child: Text(
                  style: TextStyle(
                    fontSize: 7,
                    color: Colors.white,
                  ),
                  update[index]["content"],
                ),
              ),
            ),
          ),
        ),

        title: Text(
          update[index]["name"],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),

        subtitle: Text(
          update[index]["date"],
          style: TextStyle(
            fontSize: 13,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),

        onTap: () {
          // Add Status Action
        },
      ),
    );
  }
}
