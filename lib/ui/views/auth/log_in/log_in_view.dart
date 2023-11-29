import 'package:apis/ui/common/app_colors.dart';
import 'package:apis/ui/common/ui_helpers.dart';
import 'package:apis/ui/views/auth/log_in/widget/widget.dart';
import 'package:apis/ui/views/auth/log_in/widget/widget_login.dart';
import 'package:apis/ui/views/widgets/button.dart';
import 'package:apis/ui/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        backgroundColor: Colors.white70,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello Ahmad",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                        fontWeight: FontWeight.w600),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 18,
                  ),
                ],
              ),
              verticalSpaceSmall,
              CustomTextFormField(
                hintText: "search field",
                prefix: const Icon(Icons.search),
              ),
              verticalSpaceSmall,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Deiray Beach, FL",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                Icon(Icons.map_outlined,)
                ],
              ),
              verticalSpaceSmall,
              111

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







