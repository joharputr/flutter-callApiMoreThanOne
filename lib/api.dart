import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiCall {
  Future<String> getAPi1() async {
    final url = Uri.parse("https://reqres.in/api/users/2");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final result  =  json.decode(response.body)["data"]["first_name"];
      print("result = $result");
      return result;
    }
  }
}
