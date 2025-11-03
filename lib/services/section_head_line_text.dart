import 'package:flutter/material.dart';
import 'package:hymns/services/support_widget.dart';

class SectionHeadLineText extends StatelessWidget {
  final String headlineText;

  const SectionHeadLineText({super.key, required this.headlineText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text(headlineText, style: AppWidget.headlineStyle(20.0))],
    );
  }
}
