import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tecnical_excercise_tp/core/enums/app_enums.dart';
import 'package:tecnical_excercise_tp/shared/prefs/app_prefs.dart';

part 'locale_provider.g.dart';

@riverpod
class LocaleControllers extends _$LocaleControllers {
  @override
  String build() {
    init();
    return state;
  }

  void changeLocale(String locale) async {
    state = locale;
    await AppPrefs().setString('locale', locale);
  }

  void init() {
    final locale = AppPrefs().getString('locale');
    switch (locale) {
      case _?:
        state = locale;
      default:
        state = LocaleType.en.name;
    }
  }
}
