import 'dart:convert';
import 'dart:developer';

import 'package:apis/services/models/new_task.dart';
import 'package:flutter/widgets.dart';

class NewTaskService {
  NewTask? newTaskData;

  showDataInList(context) async {
    //   try {
    //     newTaskData = await DefaultAssetBundle.of(context).load("assets/inde.json");
    //  final jsonResult = jsonDecode(newTaskData);
    //     }
    //   } catch (e) {
    //     log("======>list$e");
    try {
      String data =
          await DefaultAssetBundle.of(context).loadString("assets/inde.json");
      final jsonResult = jsonDecode(data);
      log(jsonResult.toString());
    } catch (e) {
      log("====>$e");
    }
  }
}
