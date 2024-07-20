import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:visa_in_usa/widgets/visa_scheme/visa_scheme_desktop.dart';
import 'package:visa_in_usa/widgets/visa_scheme/visa_scheme_mobile.dart';

class VisaScheme extends StatelessWidget {
  const VisaScheme({super.key});

  @override
  Widget build(BuildContext context) => ScreenTypeLayout.builder(
    mobile: (_) => const VisaSchemeMobile(),
    desktop: (_) => const VisaSchemeDesktop(),
  );
}
