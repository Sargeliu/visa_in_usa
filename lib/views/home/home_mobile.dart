import 'package:flutter/material.dart';
import 'package:visa_in_usa/widgets/doc_list/doc_list.dart';


class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          DocList(),
        ],
      ),
    );
  }
}
