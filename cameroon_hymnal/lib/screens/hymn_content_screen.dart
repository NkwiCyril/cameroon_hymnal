import 'package:cameroon_hymnal/data/hymn_data.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          hymnData[index].title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 22,
                color: Theme.of(context).colorScheme.secondary,
              ),
        ),
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
