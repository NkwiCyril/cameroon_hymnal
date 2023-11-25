import 'package:cameroon_hymnal/data/hymn_data.dart';
import 'package:riverpod/riverpod.dart';

final hymnProvider = Provider(
  (ref) {
    return hymnData;
  },
);
