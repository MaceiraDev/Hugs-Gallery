import 'dart:convert';
import 'package:http/http.dart' as http;

class CatHttp {
  Future<List<dynamic>> getJson(String link) async {
    var response = await http.get(Uri.parse(link));

    var result = json.decode(response.body);
    return result['results'];
  }
}
