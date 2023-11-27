import 'dart:convert';
import 'dart:developer';
import 'package:apis/services/models/album.dart';
import 'package:apis/services/models/post_album.dart';
import 'package:http/http.dart' as http;

// get api
class AlbumDataService {
  fetchAlbum() async {
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

      if (response.statusCode == 200) {
        Album album = Album.fromJson(jsonDecode(response.body));
        log(response.body);
        return album;
      } else {
        throw Exception('Failed to load album');
      }
    } catch (e) {
      log("===========>$e");
    }
  }

  // post api

  postApiImpl(title) async {
    try {
      final response = await http.post(
        Uri.parse("https://jsonplaceholder.typicode.com/albums"),
        headers: <String, String>{
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(<String, String>{
          'title': title,
        }),
      );
      if (response.statusCode == 201) {
        PostAlbum postAlbum = PostAlbum.fromJson(jsonDecode(response.body));
        log(response.body);
        log(postAlbum.toString());
        return postAlbum;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      log("============> $e");
    }
  }
}
