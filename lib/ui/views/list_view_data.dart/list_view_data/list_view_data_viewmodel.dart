import 'dart:developer';

import 'package:apis/app/app.locator.dart';
import 'package:apis/app/app.router.dart';
import 'package:apis/services/list_view_service.dart';
import 'package:apis/services/models/data_in_list.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ListViewDataViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _listViewservice = locator<ListViewService>();

  List<DataInList>? dataInList = [];

  dataListView() async {
    setBusy(true);
    try {
      dataInList = await _listViewservice.showDataInList();
      log(dataInList.toString());

      notifyListeners();
    } catch (e) {
      log("=====listviewBuilder$e");
    }

    setBusy(false);
  }

  moveToShowListScreen(dataInList) async {
    await _navigationService.navigateToShowListView(dataInList: dataInList);
  }
}
