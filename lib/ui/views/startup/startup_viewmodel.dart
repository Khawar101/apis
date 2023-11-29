import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:apis/app/app.locator.dart';
import 'package:apis/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  // Place anything here that needs to happen before we get into the application
  // Future runStartupLogic() async {
  //   await Future.delayed(const Duration(seconds: 3));

  //   // This is where you can make decisions on where your app should navigate when
  //   // you have custom startup logic

  //   _navigationService.replaceWithHomeView();
  // }

  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];
  final List<String> letters = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
  ];

  final List<Widget> items = [
    // const SplashContainer1(),
    // const SplashContainer2(),
    // const SplashContainer3(),
    // const SplashContainer4(),
    // const SplashContainer5(),
  ];
}
