import 'dart:convert';

import 'package:what_should_i_do/data/models/keys_list_model.dart';
import 'package:http/http.dart';

class KeysListRepository {
  String jsonUrl = 'https://www.boredapi.com/api/activity';

  Future<List<KeysListModel>> getKeys() async {
    Response response = await get(Uri.parse(jsonUrl));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map((e) => KeysListModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
