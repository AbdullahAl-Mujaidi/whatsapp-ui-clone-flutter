
import 'package:flutter/material.dart';

class Recent extends StatefulWidget {
  const Recent({super.key});

  @override
  State<Recent> createState() => _RecentState();
}

class _RecentState extends State<Recent> {

  List<Map<String, dynamic>> chats = [
    {
      "name": "Khaled",
      "image": "K",
      "date": "5:20 AM",
      "IsMessing": true
    },
    {
      "name": "Abdulah",
      "image": "A",
      "date": "5:33 AM",
      "IsMessing": false
    },
     {
      "name": "Ahmed",
      "image": "A",
      "date": "5:33 AM",
      "IsMessing": true
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {

        final currentChat = chats[index];

        return ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),

          leading: CircleAvatar(
            radius: 26,
            backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
            child: Text(
              currentChat['image'],
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),

          title: Text(
            currentChat['name'],
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: currentChat['IsMessing']
                  ? Colors.red
                  : Theme.of(context).colorScheme.onSurface,
            ),
          ),

          subtitle: Row(
            children: [
              Icon(
                currentChat['IsMessing']
                    ? Icons.call_missed
                    : Icons.call_made_sharp,
                color: currentChat['IsMessing']
                    ? Colors.red
                    : Theme.of(context).colorScheme.onSurface,
              ),

              const SizedBox(width: 5),

              Expanded(
                child: Text(
                  currentChat['date'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ],
          ),

          trailing: Icon(
            Icons.call,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        );
      },
    );
  }
}
