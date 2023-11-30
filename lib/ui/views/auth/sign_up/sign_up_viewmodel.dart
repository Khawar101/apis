import 'dart:developer';

import 'package:apis/app/app.locator.dart';
import 'package:apis/app/app.router.dart';
import 'package:apis/services/models/authentication.dart';
import 'package:apis/services/new_task_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignUpViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _newTaskService = locator<NewTaskService>();
  TextEditingController userNameCtrl = TextEditingController();
  TextEditingController signUpEmailCtrl = TextEditingController();
  TextEditingController signUpPasswordCtrl = TextEditingController();
  TextEditingController confirmpasswordCtrl = TextEditingController();
  TextEditingController phoneCtrl = TextEditingController();

  bool visibleCheck = true;

  visiblecheck() {
    visibleCheck = !visibleCheck;
    notifyListeners();
  }

  imagePick() {
    _newTaskService.uploadImage();
  }

  Authentication? authentication;

  authenticationApi(email, password, name, phone, confirmPassword) async {
    setBusy(true);
    try {
      if (signUpEmailCtrl.text != "" &&
          signUpPasswordCtrl.text != "" &&
          userNameCtrl.text != "" &&
          phoneCtrl.text != "") {
        authentication = await _newTaskService.authentication(
          email,
          password,
          name,
          phone,
          confirmPassword,
        );
        if (authentication!.token != null) {
          _navigationService.navigateToLogInView();
        }
        notifyListeners();
        log(authentication!.token.toString());
      }
    } catch (e) {
      log("===2111111>$e");
    }
    setBusy(false);
  }

 
}
