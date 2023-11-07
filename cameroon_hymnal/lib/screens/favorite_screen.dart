import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Widget screenContent = Center(
      child: Text(
        'No Favorites selected.',
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Theme.of(context).colorScheme.onBackground, fontSize: 19),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite Hymns',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
      ),
      body: screenContent,
    );
  }
}
