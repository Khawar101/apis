import 'package:apis/services/models/data_in_list.dart';
import 'package:apis/ui/common/ui_helpers.dart';
import 'package:apis/ui/views/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'show_list_viewmodel.dart';

class ShowListView extends StackedView<ShowListViewModel> {
  final DataInList dataInList;
  const ShowListView({Key? key, required this.dataInList}) : super(key: key);

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
            child: Column(
              children: [
                Text(dataInList.id.toString(),
                    style: const TextStyle(fontSize: 16, color: Colors.black)),
                verticalSpaceSmall,
                Text(dataInList.name.toString(),
                    style: const TextStyle(fontSize: 16, color: Colors.black)),
                verticalSpaceSmall,
                Text(dataInList.username.toString(),
                    style: const TextStyle(fontSize: 16, color: Colors.black)),
                verticalSpaceSmall,
                Text(dataInList.email.toString(),
                    style: const TextStyle(fontSize: 16, color: Colors.black)),
                verticalSpaceMedium,
                const Text("Address:",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(dataInList.address!.street.toString(),
                        style:
                            const TextStyle(fontSize: 16, color: Colors.black)),
                    verticalSpaceSmall,
                    Text(dataInList.address!.suite.toString(),
                        style:
                            const TextStyle(fontSize: 16, color: Colors.black)),
                    verticalSpaceSmall,
                    Text(dataInList.address!.city.toString(),
                        style:
                            const TextStyle(fontSize: 16, color: Colors.black)),
                    verticalSpaceSmall,
                    Text(dataInList.address!.zipcode.toString(),
                        style:
                            const TextStyle(fontSize: 16, color: Colors.black)),
                  ],
                ),
                verticalSpaceMedium,
                const Text("Geo:",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(dataInList.address!.geo!.lat.toString(),
                        style:
                            const TextStyle(fontSize: 16, color: Colors.black)),
                    verticalSpaceSmall,
                    Text(dataInList.address!.geo!.lng.toString(),
                        style:
                            const TextStyle(fontSize: 16, color: Colors.black)),
                  ],
                ),
                verticalSpaceMedium,
                Text(dataInList.phone.toString(),
                    style: const TextStyle(fontSize: 16, color: Colors.black)),
                verticalSpaceSmall,
                Text(dataInList.website.toString(),
                    style: const TextStyle(fontSize: 16, color: Colors.black)),
                verticalSpaceMedium,
                const Text("Company:",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(dataInList.company!.name.toString(),
                        style:
                            const TextStyle(fontSize: 16, color: Colors.black)),
                    verticalSpaceSmall,
                    Text(dataInList.company!.catchPhrase.toString(),
                        style:
                            const TextStyle(fontSize: 16, color: Colors.black)),
                    Text(dataInList.company!.bs.toString(),
                        style:
                            const TextStyle(fontSize: 16, color: Colors.black)),
                  ],
                ),
                verticalSpaceMedium,
                CustomTextButton(
                  buttonColor: Colors.black,
                  text: "Move To UpdatePage",
                  onPress: () {
                    viewModel.moveToUpdateDataScreen();
                  },
                )
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
