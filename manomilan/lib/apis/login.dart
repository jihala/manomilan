import 'dart:convert';

import 'package:manomilan/models/user.dart';

import 'package:http/http.dart' as http;

Future<UserModel> login(email, password) async {
  var url = "https://613c7c60270b96001798b160.mockapi.io/jiwhala/api/login";
  var response = await http
      .post(Uri.parse(url), body: {"user_email": email, "password": "123456"});

  if (response.statusCode == 201) {
    var body = jsonDecode(response.body);

    print(body);

    var userList = UserModel.fromJson(body);

    return userList;
  } else {
    print(response.statusCode);
  }
  throw Exception("Error on server");
}
