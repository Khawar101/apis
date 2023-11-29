import 'package:apis/ui/common/ui_helpers.dart';
import 'package:apis/ui/views/auth/log_in/log_in_viewmodel.dart';
import 'package:apis/ui/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LogInWidget extends ViewModelWidget<LogInViewModel> {
  const LogInWidget({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LogInViewModel viewModel,
  ) {
    return Column(children: [
      Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 65),
          child: Image.asset("assets/icons/logo-calling-app.png",
              fit: BoxFit.cover)
          // child: const Image(
          //     image: AssetImage("assets/icons/logo-calling-app.png")),
          ),
      // verticalSpace(20),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: CustomTextFormField(
          hintText: "Username",
          // controller: viewModel.emailCtrl,
        ),
      ),

      // verticalSpace(20),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: CustomTextFormField(
          hintText: "Password",
          // controller: viewModel.passwordCtrl,
          // isObscureText: viewModel.visibleCheck,
          suffix: GestureDetector(
            // onTap: viewModel.visiblecheck,
            // child: Icon(
              // viewModel.visibleCheck == true
                  // ? Icons.visibility_off_outlined
                  // : Icons.visibility_outlined,
              // color: Colors.blueGrey,
            // ),
          ),
        ),
      ),

      verticalSpace(20)
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
