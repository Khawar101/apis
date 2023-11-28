import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:apis/services/models/data_in_list.dart';

class ListViewService {
  List<DataInList>? dataInList;

  showDataInList() async {
    try {
      var response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

      if (response.statusCode == 200) {
        List<dynamic> dataInList = jsonDecode(response.body);
        dataInList = dataInList.map((e) => DataInList.fromJson(e)).toList();
        log(response.body);
        log(dataInList.toString());
        return dataInList;
      }
    } catch (e) {
      log("======>list$e");
    }
  }
}
