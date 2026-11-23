
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  List<Map<String, dynamic>> contact = [
    {
      "name": "Abdullah",
      "image": "A",
    },
    {
      "name": "Mohammed",
      "image": "M",
    },
    {
      "name": "Abdullah",
      "image": "A",
    },
     {
      "name": "Ahmed",
      "image": "A",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(height: 10),
      itemCount: contact.length,
      itemBuilder: (context, index) => ListTile(
        contentPadding: EdgeInsets.zero,

        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 010, horizontal: 10),
              child: Text(
                contact[index]["image"],
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
          ),
        ),

        title: Text(
          contact[index]["name"],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),

        onTap: () {
          // Add Status Action
        },
      ),
    );
  }
}
