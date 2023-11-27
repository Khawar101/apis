import 'package:apis/services/models/data_in_list.dart';
import 'package:apis/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'show_list_viewmodel.dart';

class ShowListView extends StackedView<ShowListViewModel> {
 final DataInList dataInList ;
   const ShowListView({Key? key,required this.dataInList}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ShowListViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: const Column(
              children: [
                Text("data",
                    style: TextStyle(fontSize: 16, color: Colors.black)),
                verticalSpaceSmall,
                Text("data",
                    style: TextStyle(fontSize: 16, color: Colors.black)),
                verticalSpaceSmall,
                Text("data",
                    style: TextStyle(fontSize: 16, color: Colors.black)),
                verticalSpaceSmall,
                Text("data",
                    style: TextStyle(fontSize: 16, color: Colors.black)),
                verticalSpaceMedium,
                Text("Address",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("data",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                    verticalSpaceSmall,
                    Text("data",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                    verticalSpaceSmall,
                    Text("data",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                    verticalSpaceSmall,
                    Text("data",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                  ],
                ),
                verticalSpaceMedium,
                Text("Geo",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("data",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                    verticalSpaceSmall,
                    Text("data",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                  ],
                ),
                verticalSpaceMedium,
                Text("data",
                    style: TextStyle(fontSize: 16, color: Colors.black)),
                verticalSpaceSmall,
                Text("data",
                    style: TextStyle(fontSize: 16, color: Colors.black)),
                verticalSpaceMedium,
                Text("Company",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("data",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                    verticalSpaceSmall,
                    Text("data",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  ShowListViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ShowListViewModel();
}
