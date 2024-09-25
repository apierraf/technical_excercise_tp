import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppLocale {
  static final AppLocale _singleton = AppLocale._internal();

  factory AppLocale() {
    return _singleton;
  }

  AppLocale._internal();

  AppLocalizations? localizations(BuildContext context) {
    return AppLocalizations.of(context);
  }
}
