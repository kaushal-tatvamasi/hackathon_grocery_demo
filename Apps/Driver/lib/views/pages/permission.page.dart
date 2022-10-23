import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fuodz/utils/ui_spacer.dart';
import 'package:fuodz/view_models/permission.vm.dart';
import 'package:fuodz/widgets/base.page.dart';
import 'package:fuodz/widgets/buttons/custom_button.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:stacked/stacked.dart';
import 'package:velocity_x/velocity_x.dart';

class PermissionPage extends StatelessWidget {
  const PermissionPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PermissionViewModel>.reactive(
      viewModelBuilder: () => PermissionViewModel(context),
      onModelReady: (vm) => vm.initialise(),
      builder: (context, vm, child) {
        return BasePage(
          body: SafeArea(
            child: VStack(
              [
                //
                "Permission Management".tr().text.xl2.semiBold.make(),
                UiSpacer.verticalSpace(space: 10),
                //step counter
                ("Step:".tr() +
                        " ${vm.currentStep + 1} / ${Platform.isAndroid ? 3 : 2}")
                    .text.light.xl
                    .make(),
                UiSpacer.verticalSpace(),
                //location permission
                Visibility(
                  visible: vm.showLocationPermissionView(),
                  child: VStack(
                    [
                      "Location Permission".tr().text.semiBold.xl.make().py12(),
                      "This app collects location data to enable system search for assignable order within your location and also allow customer track your location when delivering their order."
                          .tr()
                          .text
                          .make(),
                      CustomButton(
                        title: "Next".tr(),
                        onPressed: vm.handleLocationPermission,
                      ).py12(),
                    ],
                  ).p12().card.make(),
                ),
                //background location permission
                Visibility(
                  visible: vm.showBgLocationPermissionView(),
                  child: VStack(
                    [
                      "Background Location Permission"
                          .tr()
                          .text
                          .semiBold
                          .xl
                          .make()
                          .py12(),
                      "This app collects location data to enable system search for assignable order within your location and also allow customer track your location when delivering their order even when the app is closed or not in use."
                          .tr()
                          .text
                          .make(),
                      CustomButton(
                        title: "Next".tr(),
                        onPressed: vm.handleBackgroundLocationPermission,
                      ).py12(),
                    ],
                  ).p12().card.make(),
                ),
                //background permission
                Visibility(
                  visible: vm.showBgPermissionView(),
                  child: VStack(
                    [
                      "Background Permission Request"
                          .tr()
                          .text
                          .semiBold
                          .xl
                          .make()
                          .py12(),
                      "This app requires your background permission to enable app receive new order notification even when app is in background"
                          .tr()
                          .text
                          .make(),
                      CustomButton(
                        title: "Next".tr(),
                        onPressed: vm.handleBackgroundPermission,
                      ).py12(),
                    ],
                  ).p12().card.make(),
                ),
              ],
            ).p20().scrollVertical(),
          ),
        );
      },
    );
  }
}
