
import 'package:flutter/material.dart';

class Channels extends StatefulWidget {
  const Channels({super.key});

  @override
  State<Channels> createState() => _ChatState();
}

class _ChatState extends State<Channels> {

  List<Map<String, dynamic>> chats = [
    {
      "name": "AI Arabic",
      "image": "AI",
      "lastMessageTime": "2:25 AM",
      "lastMessage": "Hello",
      "unreadCount": 2,
    },
     {
      "name": "AI Arabic",
      "image": "AI",
      "lastMessageTime": "2:25 AM",
      "lastMessage": "Hello",
      "unreadCount": 2,
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
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),

          subtitle: Row(
            children: [
              const SizedBox(width: 5),

              Expanded(
                child: Text(
                  currentChat['lastMessage'],
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

          trailing: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                currentChat['lastMessageTime'],
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),

              const SizedBox(height: 6),

              if (currentChat['unreadCount'] > 0)
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Theme.of(context).colorScheme.onSecondary,
                  child: Text(
                    currentChat['unreadCount'].toString(),
                    style: const TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
