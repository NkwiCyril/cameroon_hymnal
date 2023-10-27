import 'package:cameroon_hymnal/data/hymn_data.dart';
import 'package:cameroon_hymnal/screens/hymn_content_screen.dart';
import 'package:flutter/material.dart';

class HymnTile extends StatelessWidget {
  const HymnTile({
    super.key,
    required this.index,
  });

  final int index; // all tiles will display with respect to this index

  @override
  Widget build(BuildContext context) {
    void navigateToContent() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) {
            return HymnalContentScreen(
              index: index,
            );
          }),
        ),
      );
    }

    double space = 18;

    if (index >= 9) {
      space = 10;
    }

    return ListTile(
      onTap: navigateToContent,
      title: Row(
        children: [
          Text(
            '${index + 1}.',
          ),
          SizedBox(width: space),
          Text(
            hymnData[index].title,
          ),
        ],
      ),
    );
  }
}
