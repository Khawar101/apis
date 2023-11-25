import 'package:apis/app/app.locator.dart';
import 'package:apis/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignUpViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  TextEditingController userNameCtrl = TextEditingController();
  TextEditingController signUpEmailCtrl = TextEditingController();
  TextEditingController signUpPasswordCtrl = TextEditingController();
  // TextEditingController passwordCtrl = TextEditingController();
  bool visibleCheck = true;

  visiblecheck() {
    visibleCheck = !visibleCheck;
    notifyListeners();
  }

  // moveToPrivacyPolicy() {
  //   _navigationService.navigateToPrivacyPolicyView();
  // }

  moveToLogIn() {
    _navigationService.navigateToLogInView();
  }
}
