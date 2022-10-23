import 'package:fuodz/constants/app_strings.dart';
import 'package:i18n_extension/i18n_widget.dart';

class Utils {
  //
  static bool get isArabic => I18n.language == "ar";
  //
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
