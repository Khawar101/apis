import 'package:apis/app/app.locator.dart';
import 'package:apis/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LogInViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  // final _loginService = locator<LogInService>();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  bool visibleCheck = true;

  String? username;
  String? password;

  visiblecheck() {
    visibleCheck = !visibleCheck;
    notifyListeners();
  }

  moveToSignUp() {
    _navigationService.navigateToSignUpView();
  }

  moveToHoeScreen() {
    _navigationService.navigateToHomeView();
  }
}