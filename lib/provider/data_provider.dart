import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../model/data_model.dart';

class DataProvider extends ChangeNotifier {
  final baseUrl = 'https://jsonplaceholder.typicode.com/users';

  final List<DataModel> _data = [];
  List<DataModel> get data => _data;

  Future<List<DataModel>> getData() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final finalResult = jsonDecode(response.body);

      for (Map<String, dynamic> data in finalResult) {
        _data.add(DataModel.fromJson(data));
      }
      notifyListeners();
      return _data;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
