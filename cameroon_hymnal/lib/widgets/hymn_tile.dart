import 'package:cameroon_hymnal/data/hymn_data.dart';
import 'package:flutter/material.dart';

class HymnTile extends StatelessWidget {
  const HymnTile({
    super.key,
    required this.index,
  });

  final int index; // all tiles will display with respect to this index


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Row(
        children: [
          Text(
            '${index + 1}.'
          ),
          const SizedBox(width: 10),
          Text(
            hymnData[index].title,
          ),
        ],
      ),
    );
  }
}
