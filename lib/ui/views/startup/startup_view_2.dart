import 'package:apis/ui/views/widgets/button.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:apis/ui/common/ui_helpers.dart';

import 'startup_viewmodel.dart';

class StartupView2 extends ViewModelWidget<StartupViewModel> {
  const StartupView2({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    StartupViewModel viewModel,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace(20),
            Image.asset("assets/icons/logo.png", width: 35),
            verticalSpace(20),
            Center(
              child: SvgPicture.asset(
                "assets/icons/A1-Main.svg",
                height: 250,
              ),
            ),
            verticalSpace(20),
            const Text(
              "Find Your Favorite Food",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            verticalSpace(20),
            const Text(
              "Lorem ipsum dolai sit amer.conset tetuer\n smple mistadishbbeh efd, sed",
              style: TextStyle(fontSize: 16, color: Colors.black38),
              textAlign: TextAlign.center,
            ),
            verticalSpace(40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 5,
                      ),
                      horizontalSpaceTiny,
                      CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 5,
                      ),
                      horizontalSpaceTiny,
                      CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 5,
                      ),
                    ],
                  ),
                  CustomTextButton(
                      buttonColor: Colors.red, text: "Next", width: 100,
                      onPress: viewModel.next,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
