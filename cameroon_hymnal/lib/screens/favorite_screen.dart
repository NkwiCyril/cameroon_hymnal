import 'package:cameroon_hymnal/model/hymn_model.dart';
import 'package:cameroon_hymnal/screens/hymnal_screen.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Hymn> list = [
      const Hymn(
        title: '',
        chorus: 'chorus',
        verses: [],
        antiphon: [],
      )
    ];
    Widget emptyContent = Center(
      child: Text(
        'No Favorites selected.',
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Theme.of(context).colorScheme.onBackground, fontSize: 19),
      ),
    );

    Widget filledContent = HymnalScreen(
      
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
      body: list.isEmpty ? emptyContent : filledContent,
    );
  }
}
