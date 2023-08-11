import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:home_task/%D0%9D%D0%BE%D0%B2%D0%B0%D1%8F%20%D0%BF%D0%B0%D0%BF%D0%BA%D0%B0%20(3)/user.dart';
import 'package:http/http.dart';

Future<void> main() async {
  Uri uri = Uri.parse("https://dummyjson.com/users/9");
  Response response = await get(uri);
  User user = User.fromJson(jsonDecode(response.body));
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "${user.firstName} ${user.lastName}",
        ),
      ),
      body: Center(
        child: Image(
          image: NetworkImage(user.image),
        ),
      ),
    ),
  ));
}