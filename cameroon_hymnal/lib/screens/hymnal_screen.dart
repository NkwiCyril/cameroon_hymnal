import 'package:cameroon_hymnal/widgets/hymn_tile.dart';
import 'package:flutter/material.dart';

class HymnalScreen extends StatelessWidget {
  const HymnalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cameroon Hymnal',
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.dark_mode),
          )
        ],
      ),
      body: const Column(
        children: [
          HymnTile(),
        ],
      ),
    );
  }
}
