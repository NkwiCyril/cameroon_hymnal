import 'package:cameroon_hymnal/data/hymn_data.dart';
import 'package:cameroon_hymnal/model/hymn_model.dart';
import 'package:cameroon_hymnal/widgets/hymn_content.dart';
import 'package:flutter/material.dart';

class HymnalContentScreen extends StatelessWidget {
  const HymnalContentScreen({
    super.key,
    required this.index,
    required this.hymn
  });

  final int index;
  final Hymn hymn;
  @override
  Widget build(BuildContext context) {
    final List<Hymn> favoriteMeals = [];

    void displayMessage(String message) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
    }

    void addToFavorite() {
      final isExisting = favoriteMeals.contains(hymn);
      if (isExisting) {
        favoriteMeals.remove(hymn);
        displayMessage('Hymn removed from favorite hymns.');
      }
      if (!isExisting) {
        favoriteMeals.add(hymn);
        displayMessage('Hymn added to favorite hymns.');
        print(favoriteMeals[index].title);
      }

    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          hymnData[index].title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 22,
                color: Theme.of(context).colorScheme.secondary,
              ),
        ),
        actions: [
          IconButton(
            onPressed: addToFavorite,
            icon: const Icon(
              Icons.star,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 10,
          ),
          child: HymnContent(
            index: index,
          ),
        ),
      ),
    );
  }
}
