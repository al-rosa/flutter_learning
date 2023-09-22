import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SliedButton extends StatelessWidget {
  const SliedButton({
    required this.onSubmit,
    super.key,
  });

  final void Function()? onSubmit;

  @override
  Widget build(BuildContext context) {
    return SlideAction(
      elevation: 0,
      onSubmit: onSubmit,
      sliderButtonIcon: const Text(
        "Start",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      sliderRotate: false,
      innerColor: const Color(0xff272727),
      outerColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(24),
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white70,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(56),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            const Row(
              children: [
                Icon(Icons.arrow_forward_ios),
                Icon(Icons.arrow_forward_ios),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
