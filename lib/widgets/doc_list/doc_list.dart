import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:visa_in_usa/widgets/doc_list/doc_list_desktop.dart';
import 'package:visa_in_usa/widgets/doc_list/doc_list_mobile.dart';

class DocList extends StatelessWidget {
  const DocList({super.key});

  @override
  Widget build(BuildContext context) => ScreenTypeLayout.builder(
      mobile: (_) => const DocListMobile(),
      desktop: (_) => const DocListDesktop(),
    );
}