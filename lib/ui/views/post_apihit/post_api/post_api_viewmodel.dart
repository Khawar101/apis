import 'package:apis/app/app.locator.dart';
import 'package:apis/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class PostApiViewModel extends BaseViewModel {
  TextEditingController titleCtrl = TextEditingController();

  final _navigationService = locator<NavigationService>();

  moveToApiDataScreen(){
    _navigationService.navigateToApigetDataView();
  }
}
