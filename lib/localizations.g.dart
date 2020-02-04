// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localizations.dart';

// **************************************************************************
// SheetLocalizationGenerator
// **************************************************************************

class AppLocalizations {
  AppLocalizations(this.locale) : this.labels = languages[locale];

  final Locale locale;

  static final Map<Locale, AppLocalizations_Labels> languages = {
    Locale.fromSubtags(languageCode: "fr"): AppLocalizations_Labels(
      title: "Bonjour depuis FR",
      hello: ({name}) => "Bonjour ${name}",
      contact: AppLocalizations_Labels_Contact(
        phone: "Téléphone",
        email: "Courriel",
      ),
    ),
    Locale.fromSubtags(languageCode: "en", countryCode: "US"):
        AppLocalizations_Labels(
      title: "Hello from US",
      hello: ({name}) => "Hello ${name}",
      contact: AppLocalizations_Labels_Contact(
        phone: "Phone",
        email: "Email",
      ),
    ),
    Locale.fromSubtags(languageCode: "en", countryCode: "GB"):
        AppLocalizations_Labels(
      title: "Hello from GB",
      hello: ({name}) => "Hello ${name}",
      contact: AppLocalizations_Labels_Contact(
        phone: "Phone",
        email: "Email",
      ),
    ),
  };

  final AppLocalizations_Labels labels;

  static AppLocalizations_Labels of(BuildContext context) =>
      Localizations.of<AppLocalizations>(context, AppLocalizations)?.labels;
}

typedef String AppLocalizations_Labels_hello({@required String name});

class AppLocalizations_Labels_Contact {
  const AppLocalizations_Labels_Contact({this.phone, this.email});

  final String phone;

  final String email;
}

class AppLocalizations_Labels {
  const AppLocalizations_Labels(
      {this.title, AppLocalizations_Labels_hello hello, this.contact})
      : this._hello = hello;

  final String title;

  final AppLocalizations_Labels_hello _hello;

  final AppLocalizations_Labels_Contact contact;

  String hello({@required String name}) => this._hello(
        name: name,
      );
}
