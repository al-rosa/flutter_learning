import 'package:flutter/material.dart';


class RoundContainer extends StatelessWidget {
  const RoundContainer({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    final double width = screen.width;

    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        width: width,
        height: 120,
        color: Colors.blue,
        child: Center(
            child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    double curveHeight = 20;

    final path = Path();
    path.moveTo(0, curveHeight);
    path.lineTo(0, h);
    path.lineTo(w, h);
    path.lineTo(w, curveHeight);
    path.quadraticBezierTo(w / 2, -curveHeight, 0, curveHeight);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
