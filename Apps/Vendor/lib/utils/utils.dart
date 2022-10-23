import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:fuodz/constants/app_strings.dart';
import 'package:fuodz/models/vendor.dart';
import 'package:fuodz/views/pages/package_types/package_type_pricing.page.dart';
import 'package:fuodz/views/pages/product/products.page.dart';
import 'package:fuodz/views/pages/service/service.page.dart';
import 'package:i18n_extension/i18n_widget.dart';

class Utils {
  //
  static bool get isArabic => I18n.language == "ar";
  //
  static IconData vendorIconIndicator(Vendor vendor) {
    return ((vendor == null || (!vendor.isPackageType && !vendor.isServiceType))
        ? FlutterIcons.archive_fea
        : vendor.isServiceType
            ? FlutterIcons.rss_fea
            : FlutterIcons.money_faw);
  }

  //
  static String vendorTypeIndicator(Vendor vendor) {
    return ((vendor == null || (!vendor.isPackageType && !vendor.isServiceType))
        ? 'Products'
        : vendor.isServiceType
            ? "Services"
            : 'Pricing');
  }

  static Widget vendorSectionPage(Vendor vendor) {
    return ((vendor == null || (!vendor.isPackageType && !vendor.isServiceType))
        ? ProductsPage()
        : vendor.isServiceType
            ? ServicePage()
            : PackagePricingPage());
  }

  static bool get currencyLeftSided {
    final uiConfig = AppStrings.uiConfig;
    if (uiConfig != null && uiConfig["currency"] != null) {
      final currencylOCATION = uiConfig["currency"]["location"] ?? 'left';
      return currencylOCATION.toLowerCase() == "left";
    } else {
      return true;
    }
  }
}
