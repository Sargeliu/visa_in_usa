import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:visa_in_usa/widgets/reviews/reviews_desktop.dart';
import 'package:visa_in_usa/widgets/reviews/reviews_mobile.dart';
import 'package:visa_in_usa/widgets/reviews/reviews_tablet.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) => ScreenTypeLayout.builder(
    mobile: (_) => const ReviewsMobile(),
    tablet: (_) => const ReviewsTablet(),
    desktop: (_) => const ReviewsDesktop(),
  );
}
