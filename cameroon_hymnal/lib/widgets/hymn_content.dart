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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hymnData[index].chorus,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 23,
              ),
        ),
        const SizedBox(
          height: 50,
        ),

        // IN ORDER TO DISPLAY THE List OF VERSES, I COULD USE TO CONCEPT OF THE for-in loop
        // or THE map() function

        // ...hymnData[index].verses.map((verse) {
        //   return Text(
        //   verse,
        //     style: Theme.of(
        //       context,
        //     ).textTheme.bodyLarge!.copyWith(
        //           fontWeight: FontWeight.w500,
        //           fontSize: 23,
        //         ),
        //   );
        // }),

        for (final verse in hymnData[index].verses)
          Text(
            verse,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 23,
                ),
          )
      ],
    );
  }
}
