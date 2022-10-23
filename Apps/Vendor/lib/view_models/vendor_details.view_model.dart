import 'package:cool_alert/cool_alert.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fuodz/constants/api.dart';
import 'package:fuodz/constants/app_colors.dart';
import 'package:fuodz/models/vendor.dart';
import 'package:fuodz/requests/vendor.request.dart';
import 'package:fuodz/view_models/base.view_model.dart';
import 'package:fuodz/widgets/bottomsheets/payout.bottomsheet.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:jiffy/jiffy.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class VendorDetailsViewModel extends MyBaseViewModel {
  //
  int touchedIndex;
  double totalEarning = 0.00;
  int totalOrders = 0;
  List<double> weeklySales = [0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00];
  Vendor vendor;
  VendorRequest vendorRequest = VendorRequest();
  RefreshController refreshController = RefreshController();
  String weekFirstDay = "";
  String weekLastDay = "";

  var toggleVendorAvailability;

  //
  VendorDetailsViewModel(BuildContext context) {
    this.viewContext = context;
  }

  //
  initialise() async {
    weekFirstDay = await WeekFirstDay();
    weekLastDay = await WeekLastDay();
    fetchVendorDetails();
  }

  //
  fetchVendorDetails({bool refresh = false}) async {
    //
    !refresh ? setBusy(true) : refreshController.requestRefresh();

    //
    try {
      final response = await vendorRequest.getVendorDetails();

      //
      totalEarning = double.parse(response["total_earnig"].toString());
      totalOrders = response["total_orders"];
      vendor = Vendor.fromJson(response["vendor"]);
      weeklySales = (response["report"] as List)
          .map((e) => double.parse(e["value"].toString()))
          .toList();
      notifyListeners();
      clearErrors();
    } catch (error) {
      print("Error ==> $error");
      setError(error);
    }
    setBusy(false);
    refreshController.refreshCompleted();
  }

  toggleVendorAvailablity() async {
    setBusyForObject(vendor.isOpen, true);

    //
    final apiResponse = await vendorRequest.toggleVendorAvailablity(vendor);
    if (apiResponse.allGood) {
      vendor.isOpen = !vendor.isOpen;
      notifyListeners();
    }

    //
    CoolAlert.show(
      context: viewContext,
      type: apiResponse.allGood ? CoolAlertType.success : CoolAlertType.error,
      title: "Vendor Details".tr(),
      text: apiResponse.message,
    );
    setBusyForObject(vendor.isOpen, false);
  }

  openSubscriptionPage() async {
    final url = await Api.redirectAuth(Api.subscription);
    await openWebpageLink(url);
    fetchVendorDetails();
  }

  Future<String> WeekFirstDay() async {
    DateTime today = DateTime.now();
    final formattedDate = today.subtract(Duration(days: today.weekday - 1));
    await Jiffy.locale(I18n.localeStr);
    return Jiffy.unixFromMillisecondsSinceEpoch(
            formattedDate.millisecondsSinceEpoch)
        .yMMMEd;
  }

  Future<String> WeekLastDay() async {
    DateTime today = DateTime.now();
    final formattedDate =
        today.add(Duration(days: DateTime.daysPerWeek - today.weekday));
    await Jiffy.locale(I18n.localeStr);
    return Jiffy.unixFromMillisecondsSinceEpoch(
            formattedDate.millisecondsSinceEpoch)
        .yMMMEd;
  }

  //
  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: Colors.blueGrey,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              String weekDay;
              switch (group.x.toInt()) {
                case 0:
                  weekDay = 'Monday'.tr();
                  break;
                case 1:
                  weekDay = 'Tuesday'.tr();
                  break;
                case 2:
                  weekDay = 'Wednesday'.tr();
                  break;
                case 3:
                  weekDay = 'Thursday'.tr();
                  break;
                case 4:
                  weekDay = 'Friday'.tr();
                  break;
                case 5:
                  weekDay = 'Saturday'.tr();
                  break;
                case 6:
                  weekDay = 'Sunday'.tr();
                  break;
              }
              return BarTooltipItem(
                weekDay + '\n',
                TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: (rod.y - 1).toString(),
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              );
            }),
        touchCallback: (barTouchResponse) {
          if (barTouchResponse.spot != null &&
              barTouchResponse.touchInput is! PointerUpEvent &&
              barTouchResponse.touchInput is! PointerExitEvent) {
            touchedIndex = barTouchResponse.spot.touchedBarGroupIndex;
          } else {
            touchedIndex = -1;
          }
          notifyListeners();
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          margin: 16,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return 'Mon'.tr();
              case 1:
                return 'Tue'.tr();
              case 2:
                return 'Wed'.tr();
              case 3:
                return 'Thur'.tr();
              case 4:
                return 'Fri'.tr();
              case 5:
                return 'Sat'.tr();
              case 6:
                return 'Sun'.tr();
              default:
                return '';
            }
          },
        ),
        leftTitles: SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color barColor = Colors.white,
    double width = 20,
    List<int> showTooltips = const [],
  }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          y: isTouched ? y + 1 : y,
          colors: [barColor],
          width: width,
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            colors: [
              AppColor.primaryColorDark.withOpacity(0.90).withAlpha(150)
            ],
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(7, (i) {
        return makeGroupData(i, weeklySales[i] ?? 0.00,
            isTouched: i == touchedIndex);
      });

  //
  requestPayout() async {
    showModalBottomSheet(
      context: viewContext,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return PayoutBottomSheet(
          totalEarningAmount: totalEarning,
        );
      },
    );
  }
}
