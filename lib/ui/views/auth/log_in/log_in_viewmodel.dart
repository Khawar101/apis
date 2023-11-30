import 'dart:developer';
import 'package:apis/app/app.locator.dart';
import 'package:apis/services/models/hotel_data.dart';
import 'package:apis/services/new_task_service.dart';
import 'package:stacked/stacked.dart';

class LogInViewModel extends BaseViewModel {
  final _newTaskService = locator<NewTaskService>();
  // // final _loginService = locator<LogInService>();
  // TextEditingController emailCtrl = TextEditingController();
  // TextEditingController passwordCtrl = TextEditingController();
  // bool visibleCheck = true;

  // String? username;
  // String? password;

  // visiblecheck() {
  //   visibleCheck = !visibleCheck;
  //   notifyListeners();
  // }

  // moveToSignUp() {
  //   _navigationService.navigateToSignUpView();
  // }

  // moveToHoeScreen() {
  //   _navigationService.navigateToHomeView();
  // }
  String? get userName => _newTaskService.authdata!.user!.name;
  String? get userImage => _newTaskService.authdata!.user!.photo;

  List<HotelData>? hotelData;

  hotelDataGet() async {
    setBusy(true);
    try {
      hotelData = await _newTaskService.hotelDataGet();
    } catch (e) {
      log(e.toString());
    }
    setBusy(false);
  }
}
