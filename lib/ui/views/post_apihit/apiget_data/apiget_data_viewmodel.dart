import 'package:apis/app/app.locator.dart';
import 'package:apis/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ApigetDataViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  moveToListView() {
    _navigationService.navigateToListViewDataView();
  }
}
