import 'package:flutter/material.dart';
import 'package:hymns/services/support_widget.dart';

class StatsWidgetCard extends StatelessWidget {
  String headlineText = '';
  String valueText = '';
  String suffixText = '';

  StatsWidgetCard({
    super.key,
    required this.headlineText,
    required this.valueText,
    required this.suffixText,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        margin: EdgeInsets.all(5.0),
        child: Column(
          children: [
            Text(headlineText, style: AppWidget.headlineStyle(20.0)),
            Row(
              children: [
                Text(valueText, style: AppWidget.headlineStyle(20.0)),
                Text(suffixText, style: AppWidget.mediumTextStyle(15.0)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
