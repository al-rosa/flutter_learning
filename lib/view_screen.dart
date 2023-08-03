import 'package:flutter/material.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({Key? key}) : super(key: key);

    static Route<void> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const ViewScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}