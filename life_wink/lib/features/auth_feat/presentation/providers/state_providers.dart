import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchQueryNotifier extends StateNotifier<String> {
  SearchQueryNotifier() : super('');

  void updateQuery(String query) {
    state = query;
  }
}

final expandProvider = StateProvider<bool>((ref) => false);
final countryCodeProvider = StateProvider<String>((ref) => '+1');
final searchQueryProvider =
    StateNotifierProvider<SearchQueryNotifier, String>((ref) {
  return SearchQueryNotifier();
});

final buttonColorProvider = StateProvider<bool>((ref) => false);
