import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'navbar_mobile.dart';
import 'navbar_tablet_desktop.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const NavbarMobile(),
      tablet: (_) => const NavbarTabletDesktop(),
    );
  }
}



