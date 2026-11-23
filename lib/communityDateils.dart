
import 'package:flutter/material.dart';

class CDetails extends StatefulWidget {
  const CDetails({super.key});

  @override
  State<CDetails> createState() => _CDetailsState();
}

class _CDetailsState extends State<CDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Container(
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          children: [
            ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Icon(
                  Icons.groups_2,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              title: Text("AI for All"),
            ),

            Divider(),

            ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Icon(
                  Icons.multitrack_audio_outlined,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              title: Text("Announcements"),
              subtitle: Row(
                children: [
                  Text("Abdullah:  "),
                  Text("hello Avery one How are you "),
                ],
              ),
              trailing: Text("10:45 am"),
            ),

            ListTile(
              leading: Icon(Icons.chevron_right_sharp),
              title: Text("View all"),
            )
          ],
        ),
      ),
    );
  }
}
