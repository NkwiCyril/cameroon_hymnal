import 'package:cameroon_hymnal/data/hymn_data.dart';
import 'package:flutter/material.dart';

class HymnContent extends StatelessWidget {
  const HymnContent({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyLarge!.copyWith(
          fontSize: 21,
        );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hymnData[index].chorus,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 21,
              ),
        ),
        ...hymnData[index].antiphon!.map(
          (antiphon) {
            return Text(
              antiphon,
              style: textStyle,
            );
          },
        ),
        const SizedBox(
          height: 19,
        ),
        for (final verse in hymnData[index].verses)
          Text(
            verse,
            style: textStyle,
          ),
      ],
    );
  }
}
