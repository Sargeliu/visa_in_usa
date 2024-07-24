import 'package:flutter/material.dart';

class CenteredViewTablet extends StatelessWidget {
  final Widget child;
  const CenteredViewTablet({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 768),
        child: child,
      ),
    );
  }
}
