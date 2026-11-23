
import 'package:flutter/material.dart';
import 'package:whatsapp/communityDateils.dart';

class communities extends StatefulWidget {
  const communities({super.key});

  @override
  State<communities> createState() => _communitiesState();
}

class _communitiesState extends State<communities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,

        title: Text(
          "communities",
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Theme.of(context).colorScheme.surface,
            child: ListTile(
              leading: Stack(
                children: [
                  Container(
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
                  Positioned(
                    right: -3,
                    bottom: -3,
                    child: Container(
                      width: 22,
                      height: 22,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onSecondary,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          width: 2,
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              title: Text("New Connunity"),
            ),
          ),

          CDetails(),
        ],
      ),
    );
  }
}
