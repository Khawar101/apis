import 'package:apis/ui/common/app_colors.dart';
import 'package:apis/ui/common/ui_helpers.dart';
import 'package:apis/ui/views/auth/log_in/log_in_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BottomWidget extends ViewModelWidget<LogInViewModel> {
  const BottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LogInViewModel viewModel,
  ) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.bottomCenter,
        // child: const Text(
        //   "LOGIN FOR SALES MAPPER IS ALWAYS YOUR MYCITYSOCIAL CRM LOGIN.",
        //   textAlign: TextAlign.center,
        // ),
      ),
      // verticalSpace(20),
      // InkWell(
      //     onTap: viewModel.moveToPrivacyPolicy,
      //     child: const Text("Privacy Policy")),
      // verticalSpace(20),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "If you don't have any account please",
            textAlign: TextAlign.center,
          ),
          horizontalSpaceTiny,
          InkWell(
            onTap: () {
              viewModel.moveToSignUp();
            },
            child: const Text(
              "SignUp",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  color: kcPrimaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ]);
  }
}
