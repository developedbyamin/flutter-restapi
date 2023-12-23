import 'dart:convert';
import 'package:restapi/models/user_dob.dart';
import 'package:restapi/models/user_location.dart';
import 'package:restapi/models/user_model.dart';
import 'package:restapi/models/user_name.dart';
import 'package:http/http.dart' as http;

class UserApi {
  static Future<List<User>> fetchUsers() async {
    const url = 'https://randomuser.me/api/?results=100';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final users = results.map((user) {
      return User.fromMap(user);
    }).toList();
    return users;
  }
}
