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

    return  Scaffold(
      backgroundColor: Color(0xfff8f8fa),
      body: SingleChildScrollView(
            child: Padding(
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
                      Icon(
                        Icons.map_outlined,
                      )
                    ],
                  ),
                  verticalSpaceSmall,
                  Container(
                    // height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/mac-logo.svg",
                            height: 60,
                          ),
                          horizontalSpaceSmall,
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mcdonald's",
                                style:
                                    TextStyle(color: Colors.black, fontSize: 16),
                              ),
                              Text(
                                "Burger-fries-chicken",
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 12),
                              ),
                              Text(
                                "\$12.99",
                                style: TextStyle(color: Colors.red, fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  verticalSpaceMedium,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Resturent",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "view All",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.red,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  verticalSpaceMedium,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextButton(
                        buttonColor: Colors.red,
                        text: "cafe",
                        height: 30,
                        width: 70,
                      ),
                      CustomTextButton(
                        buttonColor: Colors.white,
                        text: "Bakery",
                        height: 30,
                        width: 70,
                        textColor: Colors.black,
                      ),
                      CustomTextButton(
                        buttonColor: Colors.white,
                        text: "Italian",
                        height: 30,
                        width: 70,
                        textColor: Colors.black,
                      ),
                      CustomTextButton(
                        buttonColor: Colors.white,
                        text: "Chinese",
                        height: 30,
                        width: 70,
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                 GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount:4,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              mainAxisExtent: 180,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemBuilder: (BuildContext context, int index) {
            return Column(
                          children: [
                            Container(
                              // height: 300,
                              // width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    width: double.infinity,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: SvgPicture.asset(
                                        "assets/icons/restaurant-bg-02.svg",fit: BoxFit.cover,
                                        height: 250,
                                         width: double.infinity,
                                      ),
                                    ),
                                  ),
                                  verticalSpaceTiny,
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 4),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text("Resturnet Name",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                        verticalSpace(5),
                                        const Row(
                                          children: [
                                            Icon(Icons.location_on,color: Colors.red,size: 12,),
                                            horizontalSpaceTiny,
                                            Text("address",
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w300,
                                                    color: Colors.black45)),
                                          ],
                                        ),
                                        verticalSpace(5),
                                        const Row(
                                          children: [
                                            Icon(Icons.star,color: Colors.orange,size: 12,),
                                            horizontalSpaceTiny,
                                            Text("4.9(130)",
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w300,
                                                    color: Colors.black45)),
                                          ],
                                        ),
                                        verticalSpace(10),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
            },
          ),
                ],
              ),
            ),
          ),
    );
  }

  @override
  LogInViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LogInViewModel();
}







