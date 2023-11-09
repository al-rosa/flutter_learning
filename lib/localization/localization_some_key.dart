import 'package:flutter/material.dart';

import '../i18n/strings.g.dart';

class LocalizationSomeKey extends StatefulWidget {
  const LocalizationSomeKey({Key? key}) : super(key: key);

  @override
  State<LocalizationSomeKey> createState() => _LocalizationRadioState();
}

class _LocalizationRadioState extends State<LocalizationSomeKey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.strings.someKey.title),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(i18n.strings.someKey.notification(
                      n: 0)), // No notification has arrived 　または 通知は来ていません
                  Text(i18n.strings.someKey.notification(
                      n: 1)), // 1 notification has been received　または 1 件の通知が届いています
                  Text(i18n.strings.someKey.notification(
                      n: 2)), // 2 notifications has been received　または 2 件の通知が届いています
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    LocaleSettings.setLocale(AppLocale.en);
                    setState(() {});
                  },
                  child: const Text(
                    'English',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    LocaleSettings.setLocale(AppLocale.ja);
                    setState(() {});
                  },
                  child: const Text(
                    '日本語',
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
