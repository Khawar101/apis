import 'dart:convert';
import 'dart:developer';
import 'package:apis/services/models/album.dart';
import 'package:http/http.dart' as http;

// class AlbumDataService {
//   // Album? album;

//    Future<Album> fetchAlbum() async {
//     try{
//   final response = await http
//       .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

//   if (response.statusCode == 200) {
    
//     Album album= Album.fromJson(jsonDecode(response.body));
//     log(response.body);
//     return album;
    
//   } else {
   
//     throw Exception('Failed to load album');
//   }
//     }catch(e){
//       log("===========>$e");
//     }
// }

// }
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
      throw e; // rethrow the exception so that the caller can handle it
    }
  }
}