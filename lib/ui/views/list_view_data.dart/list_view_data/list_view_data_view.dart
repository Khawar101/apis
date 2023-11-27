import 'package:apis/services/models/data_in_list.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'list_view_data_viewmodel.dart';

class ListViewDataView extends StackedView<ListViewDataViewModel> {
  
  const ListViewDataView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ListViewDataViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: ListView.builder(
            itemCount: viewModel.dataInList?.length ?? 0,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  onTap: () {
                    viewModel.moveToShowListScreen( viewModel.dataInList![index]);
                  },
                  leading: const Icon(Icons.list),
                  trailing: Text(
                    viewModel.dataInList![index].name.toString(),
                    style: const TextStyle(color: Colors.green, fontSize: 15),
                  ),
                  title: Text("List item $index"));
            }),
      ),
    );
  }

  @override
  ListViewDataViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ListViewDataViewModel();

  @override
  void onViewModelReady(ListViewDataViewModel viewModel) {
    // TODO: implement onViewModelReady
    viewModel.dataListView();
    super.onViewModelReady(viewModel);
  }
}
