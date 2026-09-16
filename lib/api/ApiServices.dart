import 'dart:convert';

import 'package:http/http.dart' as http;

import '../login/LoginModel.dart';

class Apiservices {
  //This function(Future) will  return a User, and it may need to wait
  Future<User> getUser() async {
    final res = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/users/1"),
    );

    // jsonDecode() converts JSON data into Dart data.
    final jsonData = jsonDecode(res.body);

    return User.fromJson(jsonData);
  }
}
