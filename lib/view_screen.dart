// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import 'ui/widget/button/round_container_button.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const ViewScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          RoundContainerButton(
            onTap: () {
              print("onTap!!");
            },
          ),
        ],
      ),
    );
  }
}
