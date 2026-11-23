
import 'package:flutter/material.dart';

class ContactAction extends StatelessWidget {
  const ContactAction({super.key});

  @override
  Widget build(BuildContext context) {
    Widget createAction(IconData icon, String name, IconData? trailng) {
      return ListTile(
        contentPadding: EdgeInsets.zero,

        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Theme.of(context).colorScheme.onSecondary,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 010, horizontal: 10),
              child: Icon(icon, color: Colors.white),
            ),
          ),
        ),

        title: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        trailing: Icon(
          trailng,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      );
    }

    return Column(
      children: [
        createAction(Icons.group_add_sharp, "New group", null),
        SizedBox(height: 10),
        createAction(Icons.person_add_alt_1, "New Contacy", Icons.qr_code),
        SizedBox(height: 10),
        createAction(Icons.groups_2, "New Community", null),
        SizedBox(height: 10),
        createAction(Icons.calendar_month, "New event", null)
      ],
    );
  }
}
