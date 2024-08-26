import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:visa_in_usa/widgets/footer/desktop_footer.dart';
import 'package:visa_in_usa/widgets/footer/mobile_footer.dart';
import 'package:visa_in_usa/widgets/footer/tablet_footer.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const MobileFooter(),
      tablet: (_) => const TabletFooter(),
      desktop: (_) => const DesktopFooter(),
    );
  }
}