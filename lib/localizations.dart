import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_sheet_localization/flutter_sheet_localization.dart';

part 'localizations.g.dart';

/// https://docs.google.com/spreadsheets/d/1u8pjc6XOb_kDSAVp9_kbEUuOppYE3Utl8WqK8p0OlkI/edit?usp=sharing
@SheetLocalization("1u8pjc6XOb_kDSAVp9_kbEUuOppYE3Utl8WqK8p0OlkI", "0")
class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      AppLocalizations.languages.containsKey(locale);
  @override
  Future<AppLocalizations> load(Locale locale) =>
      SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
