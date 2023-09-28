
import 'package:flutter/material.dart';

class ScrollNotificationTest extends StatelessWidget {
  const ScrollNotificationTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollInfo) {
          print(
              "axis: ${scrollInfo.metrics.axis} pixels: ${scrollInfo.metrics.pixels}");
          return false;
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: screenSize.width,
              height: screenSize.height / 2,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: screenSize.width,
                    height: screenSize.height / 8,
                    color: Colors.blue.withOpacity(index / 10),
                    child: Text(index.toString()),
                  );
                },
              ),
            ),
            SizedBox(
              width: screenSize.width,
              height: screenSize.height / 2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: screenSize.width / 4,
                    color: Colors.red.withOpacity(index / 10),
                    child: Text(index.toString()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
