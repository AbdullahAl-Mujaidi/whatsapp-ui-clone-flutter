
import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  const Head({super.key});

  Widget createIconHead(IconData icon, String name, BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
          child: Icon(
            icon,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        Text(
          name,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        createIconHead(Icons.call, "call", context),
        createIconHead(Icons.calendar_month, "schedule", context),
        createIconHead(Icons.menu, "keyPad", context),
        createIconHead(Icons.favorite_border, "Favourite", context),
      ],
    );
  }
}
