import 'dart:developer';

import 'package:apis/app/app.locator.dart';
import 'package:apis/app/app.router.dart';
import 'package:apis/services/album_data_service.dart';
import 'package:apis/services/models/post_album.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class PostApiViewModel extends BaseViewModel {
  TextEditingController titleCtrl = TextEditingController();
  final _albumDataService = locator<AlbumDataService>();
  final _navigationService = locator<NavigationService>();

  // moveToApiDataScreen() {
  //   _navigationService.navigateToApigetDataView();
  // }

  PostAlbum? postAlbum;

  void dataPostApi() async {
    setBusy(true);
    try {
      if (titleCtrl.text != "") {
        postAlbum = await _albumDataService.postApiImpl(titleCtrl.text);
        if (postAlbum!.title != null) {
          _navigationService.navigateToApigetDataView(postAlbum: postAlbum!);
        }
        notifyListeners();
        log(postAlbum!.title.toString());
      }
    } catch (e) {
      log("===>$e");
    }
    setBusy(false);
  }
}
