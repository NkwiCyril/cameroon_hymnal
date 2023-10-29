import 'package:cameroon_hymnal/widgets/hymn_list_view.dart';
import 'package:flutter/material.dart';

class HymnalScreen extends StatefulWidget {
  const HymnalScreen({super.key, });

  // final Theme colorScheme;


  @override
  State<HymnalScreen> createState() => _HymnalScreenState();
}

class _HymnalScreenState extends State<HymnalScreen> {
  var icon = Icons.light_mode;
  void changeIcon() {
    setState(() {
      if (icon == Icons.light_mode) {
        icon = Icons.dark_mode;
      } else {
        icon = Icons.light_mode;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // there is no need to use a List in this case due to the fact that
    // most or all the data will be stored in the data file
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cameroon Hymnal',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 25,
              ),
        ),
        actions: [
          IconButton(
            onPressed: changeIcon,
            icon: Icon(
              icon,
              color: Theme.of(context).colorScheme.secondary,
              size: 27,
            ),
            color: Theme.of(context).colorScheme.onBackground,
          ),
          const SizedBox(
            width: 5,
          )
        ],
      ),
      body: const HymnListView(),
    );
  }
}
