import 'dart:convert';

import 'package:http/http.dart' as http;

import '../login/LoginModel.dart';

class Apiservices {
  Future<User> getData() async {
    const url = "https://jsonplaceholder.typicode.com/users/1";

    final response = await http.get(Uri.parse(url));

    //Convert the JSON response into Dart data.
    final jsonData = jsonDecode(response.body);

    // Convert that data into our User object.

    return User.fromJson(jsonData);
  }
}
