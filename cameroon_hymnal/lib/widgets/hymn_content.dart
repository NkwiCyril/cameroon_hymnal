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
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Text(
                antiphon,
                style: textStyle,
              ),
            );
          },
        ),
        const SizedBox(
          height: 35,
        ),
        for (final verse in hymnData[index].verses)
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: Text(
              'Number.\n$verse',
              style: textStyle,
            ),
          )
      ],
    );
  }
}
