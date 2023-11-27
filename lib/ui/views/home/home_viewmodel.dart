import 'dart:developer';

import 'package:apis/app/app.bottomsheets.dart';
import 'package:apis/app/app.dialogs.dart';
import 'package:apis/app/app.locator.dart';
import 'package:apis/app/app.router.dart';
import 'package:apis/services/album_data_service.dart';
import 'package:apis/services/models/album.dart';
import 'package:apis/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _albumService = locator<AlbumDataService>();

  //    late Future<Album> futureAlbum = _albumService.fetchAlbum();

  // void fetchAlbum() async {
  //   try {
  //     futureAlbum = _albumService.fetchAlbum();
  //   } catch (e) {
  //     log(e.toString());
  //   }
  // }
  Album? album;

  init() async {
    setBusy(true);
    try {
      album = await _albumService.fetchAlbum();
      notifyListeners(); // Notify listeners to trigger a UI update
    } catch (e) {
      log(e.toString());
    }
    setBusy(false);
  }

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void decrementCounter() {
    if (_counter == 0) {
      _counter = 0;
    } else {
      _counter--;
    }

    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  moveToPostApi() {
    _navigationService.navigateToPostApiView();
  }
}
