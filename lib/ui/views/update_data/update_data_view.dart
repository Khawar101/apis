import 'package:apis/ui/common/ui_helpers.dart';
import 'package:apis/ui/views/widgets/button.dart';
import 'package:apis/ui/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'update_data_viewmodel.dart';

class UpdateDataView extends StackedView<UpdateDataViewModel> {
  const UpdateDataView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    UpdateDataViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Hello Ahmad",style: TextStyle(fontSize: 16,color: Colors.red,fontWeight: FontWeight.w600),),
                  const CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 18,
                  ),
                  verticalSpaceSmall,
                  CustomTextFormField(
                    width: 400,
                  hintText: "search for dishes or resturent",
                  )

                ],
              ),

            ],
          )
        ),
      ),
    );
  }

  @override
  UpdateDataViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      UpdateDataViewModel();

  @override
  void onViewModelReady(UpdateDataViewModel viewModel) {
    // TODO: implement onViewModelReady
    viewModel.profileData();
    super.onViewModelReady(viewModel);
  }
}















//  viewModel.isBusy
//               ? const Center(
//                   child: CircularProgressIndicator(),
//                 )
//               : Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     GestureDetector(
//                         onTap: () {
//                           viewModel.setEditClick();
//                         },
//                         child: Container(
//                             height: 40,
//                             width: 60,
//                             color: Colors.red,
//                             child:
//                                 const Icon(Icons.edit, color: Colors.black))),
//                     verticalSpace(20),
//                     viewModel.editClick
//                         ? CustomTextButton(
//                             buttonColor: Colors.red,
//                             text: viewModel.updateProfile!.title.toString())
//                         : CustomTextFormField(
//                             controller: viewModel.titleCtrl,
//                             hintText: viewModel.updateProfile!.title.toString(),
//                           ),
//                     verticalSpace(20),
//                     viewModel.editClick
//                         ? CustomTextButton(
//                             buttonColor: Colors.red,
//                             text: viewModel.updateProfile!.userId.toString())
//                         : CustomTextFormField(
//                             controller: viewModel.useridCtrl,
//                             hintText: viewModel.updateProfile!.userId.toString(),
//                           ),
//                     verticalSpace(40),
//                     CustomTextButton(
//                       buttonColor: Colors.red,
//                       text: viewModel.editClick ? "update profile" : "Save",
//                       onPress: () {
//                         viewModel.editClick
//                             ? () {}
//                             : viewModel.upDateProfileData(
//                                 viewModel.titleCtrl.text,
//                                 viewModel.useridCtrl.text.toString());
//                       },
//                     )
//                   ],
//                 ),