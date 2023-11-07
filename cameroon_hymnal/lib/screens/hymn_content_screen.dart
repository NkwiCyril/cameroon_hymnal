import 'package:cameroon_hymnal/data/hymn_data.dart';
import 'package:cameroon_hymnal/model/hymn_model.dart';
import 'package:cameroon_hymnal/widgets/hymn_content.dart';
import 'package:flutter/material.dart';

class HymnalContentScreen extends StatelessWidget {
  const HymnalContentScreen({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final List<Hymn> favoriteMeals = [];

    void displayMessage(String message) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          dismissDirection: DismissDirection.up,
          duration: const Duration(seconds: 2),
          
        ),
      );
    }

    void addToFavorite(int index) {
      final isExisting = favoriteMeals.contains(hymnData[index]);
      if (isExisting) {
        favoriteMeals.remove(hymnData[index]);
        displayMessage('Hymn removed from favorite hymns.');
      }
      if (!isExisting) {
        favoriteMeals.add(hymnData[index]);
        displayMessage('Hymn added to favorite hymns.');
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
            onPressed: () {
              addToFavorite(index);
            },
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
