import 'package:flutter/material.dart';

import '../round_container.dart';

class RoundContainerButton extends StatelessWidget {
  const RoundContainerButton({
    required this.onTap,
    super.key,
  });

  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap;
      },
      child: const RoundContainer(
        title: "円形のボタン",
      ),
    );
  }
}
