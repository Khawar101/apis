import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'apiget_data_viewmodel.dart';

class ApigetDataView extends StackedView<ApigetDataViewModel> {
  const ApigetDataView({Key? key}) : super(key: key);

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
      ),
    );
  }

  @override
  ApigetDataViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ApigetDataViewModel();
}
