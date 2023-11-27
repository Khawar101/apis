import 'package:apis/services/models/post_album.dart';
import 'package:apis/ui/views/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'apiget_data_viewmodel.dart';

class ApigetDataView extends StackedView<ApigetDataViewModel> {
  // final String title;
  // final String id;
  final PostAlbum postAlbum;

  const ApigetDataView({Key? key, required this.postAlbum}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ApigetDataViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextButton(buttonColor: Colors.green, text: postAlbum.title),
            const SizedBox(height: 15),
            CustomTextButton(
                buttonColor: Colors.green, text: postAlbum.id.toString()),
            const SizedBox(height: 25),
            CustomTextButton(
                buttonColor: Colors.red,
                text: "listViewScreen",
                onPress: viewModel.moveToListView),
          ],
        ),
      ),
    );
  }

  @override
  ApigetDataViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ApigetDataViewModel();
}
