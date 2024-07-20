import 'package:flutter/material.dart';
import 'package:visa_in_usa/widgets/doc_list/doc_list.dart';
import 'package:visa_in_usa/widgets/visa_scheme/visa_scheme.dart';



class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          DocList(),
          VisaScheme()
,        ],
      ),
    );
  }
}
