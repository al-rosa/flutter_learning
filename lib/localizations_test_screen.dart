import 'package:flutter/material.dart';

import 'i18n/strings.g.dart';

class LocalizationsTestScreen extends StatefulWidget {
  const LocalizationsTestScreen({Key? key}) : super(key: key);

  @override
  State<LocalizationsTestScreen> createState() =>
      _LocalizationsTestScreenState();
}

class _LocalizationsTestScreenState extends State<LocalizationsTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t.mainScreen.title),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(t.mainScreen.signIn),
            ),
            TextButton(
              onPressed: () {},
              child: Text(t.mainScreen.signOut),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    LocaleSettings.setLocale(AppLocale.en);
                    setState(() {});
                  },
                  child: const Text("English"),
                ),
                TextButton(
                  onPressed: () {
                    LocaleSettings.setLocale(AppLocale.ja);
                    setState(() {});
                  },
                  child: const Text("日本語"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
