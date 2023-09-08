import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CircleShineButton extends HookWidget {
  const CircleShineButton({
    Key? key,
    required this.onTap,
    this.icon = Icons.add,
    this.size = 60,
    this.color = Colors.white,
    this.backgroundColor = Colors.black,
  }) : super(key: key);

  final Function onTap;
  final IconData icon;
  final double size;
  final Color color;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    final blurRadius = useState(8.0);
    return InkWell(
      onTap: () {
        blurRadius.value = 8.0;
        onTap;
      },
      onTapDown: (details) {
        blurRadius.value = 10.0;
      },
      child: Material(
        shape: CircleBorder(
          side: BorderSide(
            color: color,
          ),
        ),
        color: Colors.transparent,
        child: Container(
          width: size,
          height: size,
          decoration: ShapeDecoration(
            shadows: [
              BoxShadow(
                color: color,
                offset: const Offset(0, 0),
                blurRadius: blurRadius.value,
              ),
              BoxShadow(
                color: backgroundColor,
                offset: const Offset(0, 0),
                blurRadius: 10,
              ),
            ],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(size / 2),
              ),
            ),
          ),
          child: Icon(
            icon,
            color: color,
            size: size / 2,
            shadows: [
              BoxShadow(
                color: color,
                offset: const Offset(0, 0),
                blurRadius: blurRadius.value,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
