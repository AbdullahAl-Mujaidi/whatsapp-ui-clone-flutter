
import 'package:flutter/material.dart';

class ChatFilters extends StatefulWidget {
  const ChatFilters({super.key});

  @override
  State<ChatFilters> createState() => _ChatFiltersState();
}

class _ChatFiltersState extends State<ChatFilters> {
  final List<String> filters = [
    'All',
    'Unread',
    'Favorites',
    'Groups',
    'Family',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: filters.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ChoiceChip(
              label: Text(filters[index]),
              selected: selectedIndex == index,
              onSelected: (value) {
                setState(() {
                  selectedIndex = index;
                });
              },
              selectedColor: Theme.of(context).colorScheme.secondaryContainer,
              backgroundColor: Theme.of(context).colorScheme.surface,
              labelStyle: TextStyle(
                color: selectedIndex == index
                    ? Theme.of(context).colorScheme.onSecondaryContainer
                    : Theme.of(context).colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                  color: selectedIndex == index
                      ? Colors.transparent
                      : Theme.of(context).colorScheme.outlineVariant,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
