import 'package:apis/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:apis/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:apis/ui/views/home/home_view.dart';
import 'package:apis/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:apis/ui/views/auth/log_in/log_in_view.dart';
import 'package:apis/ui/views/auth/sign_up/sign_up_view.dart';
import 'package:apis/services/album_data_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LogInView),
    MaterialRoute(page: SignUpView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AlbumDataService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
