import 'package:flutter/material.dart';
import 'package:hymns/services/section_head_line_text.dart';
import 'package:hymns/services/small_card_widget.dart';
import 'package:hymns/services/stats_widget_card.dart';
import 'package:hymns/services/support_widget.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          margin: EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("Hi, Lewis", style: AppWidget.headlineStyle(24.0)),
                      Text(
                        "Let's update your Profile",
                        style: AppWidget.headlineStyle(18.0),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60.0),
                    child: Image(
                      image: AssetImage('assets/images/profile.png'),
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha((0.1 * 255).round()),
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SectionHeadLineText(headlineText: "Your Plans"),
                    SizedBox(height: 10.0),
                    InputDatePickerFormField(
                      firstDate: DateTime.now().subtract(
                        Duration(days: 365 * 18),
                      ),
                      lastDate: DateTime(2100),
                      initialDate: DateTime.now().subtract(
                        Duration(days: 365 * 18),
                      ),
                      fieldLabelText: 'Select your date of birth',
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
