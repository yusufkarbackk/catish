import 'dart:convert';

import 'package:catish/models/Models.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:catish/shared/Constants.dart';

class CatProvider extends ChangeNotifier {
  static Future<List<Cat>> getCatBreeds() async {
    var result =
        await http.get(Uri.parse(breeds), headers: {'x-api-key': apiKey});
    print(result.statusCode);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Cat> cats = data.map((json) => Cat.fromJson(json)).toList();
      print('Success');
      return cats;
    } else {
      return [];
    }
  }
}
