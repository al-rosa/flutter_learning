import 'package:flutter/material.dart';

import 'ui/widget/button/slied_button.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SliedButton(
          onSubmit: () => print("object"),
        ),
      ),
    );
  }
}
