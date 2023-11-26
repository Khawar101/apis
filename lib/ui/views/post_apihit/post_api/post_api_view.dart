import 'package:apis/ui/common/ui_helpers.dart';
import 'package:apis/ui/views/widgets/button.dart';
import 'package:apis/ui/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'post_api_viewmodel.dart';

class PostApiView extends StackedView<PostApiViewModel> {
  const PostApiView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PostApiViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormField(
              hintText: 'enter title',
              controller: viewModel.titleCtrl,

            ),
            verticalSpaceLarge,
            CustomTextButton(buttonColor: Colors.red, text: "enter next screen",onPress: viewModel.moveToApiDataScreen)

          ],
        ),
      ),
    );
  }

  @override
  PostApiViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PostApiViewModel();
}
