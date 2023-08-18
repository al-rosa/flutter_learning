import 'package:flutter/material.dart';

import 'ui/screen/gradient_screen.dart';
import 'ui/widget/container/glass_container.dart';

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
      body: GradientScreen(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Align(
              alignment: Alignment(-0.6, -0.25),
              child: CircleAvatar(
                radius: 30,
              ),
            ),
            Align(
              alignment: const Alignment(0.6, 0.25),
              child: Container(
                width: 60,
                height: 60,
                color: Colors.yellow,
              ),
            ),
            const GlassContainer(
              width: 200,
              height: 200,
              color: Colors.white,
              child: Text(
                "Flutterで作る\nglassmorphism",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
