import 'package:apis/ui/common/app_colors.dart';
import 'package:apis/ui/common/ui_helpers.dart';
import 'package:apis/ui/views/auth/sign_up/widget/textfield.dart';
import 'package:apis/ui/views/widgets/button.dart';
import 'package:apis/ui/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        backgroundColor: const Color(0xfff8f8fa),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Enter Your Signup Detail",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  verticalSpaceSmall,
                  const Text(
                    "Lorem ipsum dolai sit amer.conset tetuer\n smple mistadishbbeh efd, sed",
                    style: TextStyle(fontSize: 16, color: Colors.black38),
                    textAlign: TextAlign.start,
                  ),
                  verticalSpaceSmall,
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        viewModel.imagePick();
                      },
                      child: SvgPicture.asset(
                        "assets/icons/profile-placeholder.svg",
                        height: 52,
                      ),
                    ),
                  ),
                  verticalSpaceSmall,
                  CustomTextFormField(
                    controller: viewModel.userNameCtrl,
                    hintText: "Enter your name",
                  ),
                  verticalSpaceSmall,
                  CustomTextFormField(
                    controller: viewModel.signUpEmailCtrl,
                    hintText: "Email Address",
                  ),
                  verticalSpaceSmall,
                  CustomTextFormField(
                    controller: viewModel.phoneCtrl,
                    hintText: "phone No",
                  ),
                  verticalSpaceSmall,
                  CustomTextFormField(
                    controller: viewModel.signUpPasswordCtrl,
                    hintText: "password",
                  ),
                  verticalSpaceSmall,
                  CustomTextFormField(
                    controller: viewModel.confirmpasswordCtrl,
                    hintText: "Enter confirm password",
                  ),
                  verticalSpaceMedium,
                  CustomTextButton(
                      buttonColor: Colors.red,
                      text: "Signup",
                      onPress: () {
                        viewModel.authenticationApi(
                          viewModel.signUpEmailCtrl.text,
                          viewModel.signUpPasswordCtrl.text,
                          viewModel.userNameCtrl.text,
                          viewModel.phoneCtrl.text.toString(),
                          viewModel.confirmpasswordCtrl.text,
                        );
                      })
                ],
              ),
            ),
          ),
        ));
  }

  @override
  SignUpViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignUpViewModel();
}

// verticalSpace(height * 0.1),
//           const LogoTextField(),
//           verticalSpace(20),
//           CustomTextButton(
//               buttonColor: kcPrimaryColor,
//               text: "SignUp",
//               onPress: () {
//                 // if (formKey.currentState!.validate()) {}
//               }),
//           verticalSpace(25),
//           const LogInBottom()
