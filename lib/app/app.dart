import 'package:apis/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:apis/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:apis/ui/views/home/home_view.dart';
import 'package:apis/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:apis/ui/views/auth/log_in/log_in_view.dart';
import 'package:apis/ui/views/auth/sign_up/sign_up_view.dart';
import 'package:apis/services/album_data_service.dart';
import 'package:apis/ui/views/post_apihit/post_api/post_api_view.dart';
import 'package:apis/ui/views/post_apihit/apiget_data/apiget_data_view.dart';
import 'package:apis/ui/views/list_view_data.dart/list_view_data/list_view_data_view.dart';
import 'package:apis/ui/views/list_view_data.dart/show_list/show_list_view.dart';
import 'package:apis/services/list_view_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LogInView),
    MaterialRoute(page: SignUpView),
    MaterialRoute(page: PostApiView),
    MaterialRoute(page: ApigetDataView),
    MaterialRoute(page: ListViewDataView),
    MaterialRoute(page: ShowListView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AlbumDataService),
    LazySingleton(classType: ListViewService),
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
