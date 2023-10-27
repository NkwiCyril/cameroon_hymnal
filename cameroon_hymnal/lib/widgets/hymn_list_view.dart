import 'package:cameroon_hymnal/data/hymn_data.dart';
import 'package:cameroon_hymnal/widgets/hymn_tile.dart';
import 'package:flutter/material.dart';

class HymnListView extends StatelessWidget {
  const HymnListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: hymnData.length,
      itemBuilder: (ctx, index) {
        return HymnTile(
          // get data by means each index in the data file (hymnData)
          // start from 1 so I will have to increment at each iteration
          index: index,
        );
      },
    );
  }
}
