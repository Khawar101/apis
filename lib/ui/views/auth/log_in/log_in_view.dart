import 'package:apis/ui/common/app_colors.dart';
import 'package:apis/ui/common/ui_helpers.dart';
import 'package:apis/ui/views/auth/log_in/widget/widget.dart';
import 'package:apis/ui/views/auth/log_in/widget/widget_login.dart';
import 'package:apis/ui/views/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'log_in_viewmodel.dart';

class LogInView extends StackedView<LogInViewModel> {
  const LogInView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LogInViewModel viewModel,
    Widget? child,
  ) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          verticalSpace(height * 0.18),
          const LogInWidget(),
          verticalSpace(20),
          viewModel.isBusy
              ? const Center(child: CircularProgressIndicator())
              : CustomTextButton(
                  buttonColor: kcPrimaryColor,
                  text: "Login",
                  onPress: () {
                    viewModel.moveToHoeScreen();
                    // if (formKey.currentState!.validate()) {
                    //   viewModel.loginNow(viewModel.emailCtrl.text,
                    //       viewModel.passwordCtrl.text, context);
                    // }
                  }),
          verticalSpace(25),
          const BottomWidget(),
        ],
      ),
    ));
  }

  @override
  LogInViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LogInViewModel();
}
