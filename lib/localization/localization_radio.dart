import 'package:flutter/material.dart';

import '../i18n/strings.g.dart';

class LocalizationRadio extends StatefulWidget {
  const LocalizationRadio({Key? key}) : super(key: key);

  @override
  State<LocalizationRadio> createState() => _LocalizationRadioState();
}

class _LocalizationRadioState extends State<LocalizationRadio> {
  Evaluation? _evaluation = Evaluation.excellent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.strings.mainScreen.title),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: Evaluation.values.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(i18n.strings.evaluation[index]),
                    leading: Radio<Evaluation>(
                      value: Evaluation.values[index],
                      groupValue: _evaluation,
                      onChanged: (Evaluation? value) {
                        setState(() {
                          _evaluation = value;
                        });
                      },
                    ),
                  );
                },
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

enum Evaluation {
  excellent,
  good,
  fair,
  poor,
  veryPoor,
}
