import 'package:apis/ui/common/ui_helpers.dart';
import 'package:apis/ui/views/auth/sign_up/sign_up_viewmodel.dart';
import 'package:apis/ui/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LogoTextField extends ViewModelWidget<SignUpViewModel> {
  const LogoTextField({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    SignUpViewModel viewModel,
  ) {
    return Column(children: [
      Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 65),
          child: Image.asset("assets/icons/logo-calling-app.png",
              fit: BoxFit.cover)
          //  const Image(
          //     image: AssetImage("assets/icons/logo-calling-app.png")),
          ),
      verticalSpace(10),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: CustomTextFormField(
          hintText: "Username",
          controller: viewModel.userNameCtrl,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
        child: CustomTextFormField(
          hintText: "UserEmail",
          controller: viewModel.signUpEmailCtrl,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: CustomTextFormField(
          hintText: "Password",
          isObscureText: viewModel.visibleCheck,
          controller: viewModel.signUpPasswordCtrl,
          suffix: GestureDetector(
            onTap: viewModel.visiblecheck,
            child: Icon(
              viewModel.visibleCheck == true
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: Colors.blueGrey,
            ),
          ),
        ),
      ),

      // verticalSpace(20),
      // verticalSpace(50),
      // Container(
      //   margin: const EdgeInsets.symmetric(horizontal: 25),
      //   alignment: Alignment.bottomCenter,
      //   child: const Text(
      //     "Copyright © 2011 - 2015 Mycitysocial. All rights reserved. This program is protected by US and international laws of copyright.",
      //     textAlign: TextAlign.center,
      //   ),
      // ),
    ]);
  }
}
