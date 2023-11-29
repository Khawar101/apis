import 'package:apis/ui/views/widgets/button.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:apis/ui/common/ui_helpers.dart';

import 'startup_viewmodel.dart';

class StartupView4 extends ViewModelWidget<StartupViewModel> {
  const StartupView4({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    StartupViewModel viewModel,
  ) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace(100),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)
              ),
             
              child: Image.asset("assets/icons/logo.png", width: 35)),
            verticalSpace(200),
           
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                  
                  CustomTextButton(
                    buttonColor: Colors.white,
                    text: "Signup",
                    // width: 100,
                    onPress: viewModel.moveToSignup,
                    textColor: Colors.deepOrange,
                  )
               
            )
          ],
        ),
      ),
    );
  }
}
