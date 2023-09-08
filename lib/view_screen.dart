import 'package:flutter/material.dart';

import 'ui/widget/button/circle_shine_button.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CircleShineButton(
        onTap: () {},
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "光輝く円形ボタン",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
