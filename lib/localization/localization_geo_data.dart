import 'package:flutter/material.dart';

import '../i18n/strings.g.dart';

class LocalizationGeoData extends StatefulWidget {
  const LocalizationGeoData({Key? key}) : super(key: key);

  @override
  State<LocalizationGeoData> createState() => _LocalizationRadioState();
}

class _LocalizationRadioState extends State<LocalizationGeoData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.strings.geoTable.title),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DataTable(
              columns: [
                DataColumn(label: Text(i18n.strings.geoTable.country)),
                DataColumn(label: Text(i18n.strings.geoTable.capital)),
              ],
              rows: i18n.strings.geoTable.nationCityPairs.entries.map((pair) {
                return DataRow(cells: [
                  DataCell(Text(pair.key)),
                  DataCell(Text(pair.value)),
                ]);
              }).toList(),
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
          ],
        ),
      ),
    );
  }
}
