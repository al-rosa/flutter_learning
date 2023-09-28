import 'package:flutter/material.dart';
import 'package:flutter_learning/app.dart';

import 'i18n/strings.g.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.setLocale(AppLocale.ja);
  runApp(TranslationProvider(child: const App()));
}
