import 'dart:convert';
import 'dart:developer';

import 'package:apis/services/models/update_profile.dart';
import 'package:http/http.dart' as http;

class UpdateApiService {
  upDateProfileApi() async {
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

      if (response.statusCode == 200) {
        UpdateProfile album = UpdateProfile.fromJson(jsonDecode(response.body));
        log(response.body);
        return album;
      } else {
        throw Exception('Failed to load album');
      }
    } catch (e) {
      log("===========>$e");
    }
  }

  upToDate(title, userid) async {
    try {
      final response = await http.put(
          Uri.parse("https://jsonplaceholder.typicode.com/albums/1"),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, dynamic>{"title": title, "userid": userid}));
      if (response.statusCode == 200) {
        UpdateProfile updateProfile =
            UpdateProfile.fromJson(jsonDecode(response.body.toString()));
        log(updateProfile.toString());
        return updateProfile;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
