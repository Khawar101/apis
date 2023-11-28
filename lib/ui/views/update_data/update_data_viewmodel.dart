import 'dart:developer';

import 'package:apis/app/app.locator.dart';
import 'package:apis/services/models/update_profile.dart';
import 'package:apis/services/update_api_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class UpdateDataViewModel extends BaseViewModel {
  bool editClick = true;
  TextEditingController titleCtrl = TextEditingController();
  TextEditingController useridCtrl = TextEditingController();
  final _upDateProfile = locator<UpdateApiService>();

  setEditClick() {
    editClick = !editClick;
    notifyListeners();
  }

  UpdateProfile? updateProfile;

  profileData() async {
    setBusy(true);
    try {
      updateProfile = await _upDateProfile.upDateProfileApi();
      log(updateProfile.toString());
      notifyListeners();
    } catch (e) {
      log(e.toString());
    }
    setBusy(false);
  }

  upDateProfileData(title, userid) async {
    setBusy(true);
    try {
      updateProfile = await _upDateProfile.upToDate(title, userid);
      log(updateProfile.toString());
      setEditClick();
      notifyListeners();
    } catch (e) {
      log(e.toString());
    }
    setBusy(false);
  }
}
