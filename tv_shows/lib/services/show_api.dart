import 'package:http/http.dart' as http;
import '../modules/show_module.dart';

class ShowApi {
  Future<List<ShowModule>> getShows() async {
    try {
      final response =
          await http.get(Uri.parse('https://api.tvmaze.com/shows'));
      // final data = jsonDecode(response.body);
      return showModuleFromJson(response.body);
    } catch (e) {
      throw e.toString();
    }
  }
}
