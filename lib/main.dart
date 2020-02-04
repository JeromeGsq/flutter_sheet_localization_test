import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _localeIndex;
  Locale _currentLocale;

  @override
  void initState() {
    _localeIndex = 0;
    _currentLocale = AppLocalizations.languages.keys.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      locale: _currentLocale,
      localizationsDelegates: [
        const AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.languages.keys.toList(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'Flutter Demo Home Page',
        localeIndex: _localeIndex,
        onLocaleChanged: (localeIndex) {
          this.setState(
            () {
              if (_localeIndex >= AppLocalizations.languages.keys.length - 1) {
                _localeIndex = 0;
              } else {
                _localeIndex = localeIndex;
              }
              this._currentLocale =
                  AppLocalizations.languages.keys.elementAt(_localeIndex);
            },
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({
    Key key,
    this.title,
    this.localeIndex,
    @required this.onLocaleChanged,
  }) : super(key: key);

  final String title;
  final int localeIndex;
  final ValueChanged<int> onLocaleChanged;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations_Labels localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(localizations.title),
            Text(localizations.hello(name: 'Dash')),
            Text(localizations.contact.email),
            Text(localizations.contact.phone),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          onLocaleChanged(localeIndex + 1);
        },
        child: Icon(Icons.swap_horiz),
      ),
    );
  }
}
