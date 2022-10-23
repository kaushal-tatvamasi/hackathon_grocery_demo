import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:fuodz/constants/app_images.dart';
import 'package:fuodz/constants/app_routes.dart';
import 'package:fuodz/services/auth.service.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'base.view_model.dart';
import 'package:velocity_x/velocity_x.dart';

class OnboardingViewModel extends MyBaseViewModel {
  OnboardingViewModel(BuildContext context) {
    this.viewContext = context;
  }

  final PageController pageController = PageController();

  final List<OnBoardModel> onBoardData = [
    OnBoardModel(
      title: "Delivery made easy".tr(),
      description:
          "Get notified as soon as an order is available for delivery".tr(),
      imgUrl: AppImages.onboarding1,
    ),
    OnBoardModel(
      title: "Chat with vendor/customer".tr(),
      description:
          "Call/Chat with vendor/delivery boy for update about your order and more".tr(),
      imgUrl: AppImages.onboarding2,
    ),
    OnBoardModel(
      title: "Earning".tr(),
      description:
          "You get commissions from every delivery made".tr(),
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
