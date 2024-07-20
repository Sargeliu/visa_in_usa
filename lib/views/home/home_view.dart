import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'home_desktop.dart';
import 'home_mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const HomeMobile(),
      desktop: (_) => const HomeDesktop(),
    );
  }
}