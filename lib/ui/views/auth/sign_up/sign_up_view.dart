import 'package:apis/ui/common/app_colors.dart';
import 'package:apis/ui/common/ui_helpers.dart';
import 'package:apis/ui/views/auth/sign_up/widget/button.dart';
import 'package:apis/ui/views/auth/sign_up/widget/textfield.dart';
import 'package:apis/ui/views/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'sign_up_viewmodel.dart';

class SignUpView extends StackedView<SignUpViewModel> {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignUpViewModel viewModel,
    Widget? child,
  ) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          verticalSpace(height * 0.1),
          const LogoTextField(),
          verticalSpace(20),
          CustomTextButton(
              buttonColor: kcPrimaryColor,
              text: "SignUp",
              onPress: () {
                // if (formKey.currentState!.validate()) {}
              }),
          verticalSpace(25),
          const LogInBottom()
        ],
      ),
    ));
  }

  @override
  SignUpViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignUpViewModel();
}
