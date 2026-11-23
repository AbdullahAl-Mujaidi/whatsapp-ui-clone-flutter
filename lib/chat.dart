
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {

  List<Map<String, dynamic>> chats = [
    {
      "name": "Abdullah",
      "image": "A",
      "lastMessageTime": "2:25 AM",
      "lastMessage": "Hello",
      "messageStatus": "sent",
      "unreadCount": 2,
    },
    {
      "name": "Mohammed",
      "image": "M",
      "lastMessageTime": "2:30 AM",
      "lastMessage": "How are you?",
      "messageStatus": "delivered",
      "unreadCount": 0,
    },
    {
      "name": "Ahmed",
      "image": "A",
      "lastMessageTime": "3:00 AM",
      "lastMessage": "Good morning",
      "messageStatus": "read",
      "unreadCount": 0,
    },
    {
      "name": "Ali",
      "image": "A",
      "lastMessageTime": "4:15 AM",
      "lastMessage": "See you later",
      "messageStatus": "sent",
      "unreadCount": 1,
    },
    {
      "name": "Khaled",
      "image": "K",
      "lastMessageTime": "5:20 AM",
      "lastMessage": "Thank you",
      "messageStatus": "read",
      "unreadCount": 0,
    },
  ];

  Widget messageStatus(String status) {
    switch (status) {
      case 'sent':
        return const Icon(
          Icons.check,
          size: 18,
          color: Colors.grey,
        );

      case 'delivered':
        return const Icon(
          Icons.done_all,
          size: 18,
          color: Colors.grey,
        );

      case 'read':
        return const Icon(
          Icons.done_all,
          size: 18,
          color: Color(0xFF34B7F1),
        );

      default:
        return const SizedBox.shrink();
    }
  }

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
              messageStatus(currentChat['messageStatus']),

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
