import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:fuodz/constants/app_images.dart';
import 'package:fuodz/constants/app_routes.dart';
import 'package:fuodz/services/auth.service.dart';
import 'base.view_model.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class OnboardingViewModel extends MyBaseViewModel {
  OnboardingViewModel(BuildContext context) {
    this.viewContext = context;
  }

  final PageController pageController = PageController();

  final List<OnBoardModel> onBoardData = [
    OnBoardModel(
      title: "Take Orders".tr(),
      description: "Get notified as soon as an order is place".tr(),
      imgUrl: AppImages.onboarding1,
    ),
    OnBoardModel(
      title: "Chat with driver/customer".tr(),
      description:
          "Call/Chat with driver/delivery boy for update about your order and more".tr(),
      imgUrl: AppImages.onboarding2,
    ),
    OnBoardModel(
      title: "Earning".tr(),
      description: "See your earning increase with demand".tr(),
      imgUrl: AppImages.onboarding3,
    ),
  ];

  void onDonePressed() async {
    //
    await AuthServices.firstTimeCompleted();
    viewContext.navigator.pushNamedAndRemoveUntil(
      AppRoutes.loginRoute,
      (route) => false,
    );
  }
}
