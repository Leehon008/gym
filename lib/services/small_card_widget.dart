import 'package:flutter/material.dart';
import 'package:hymns/services/support_widget.dart';

class SmallCardWidget extends StatefulWidget {
  String imagePath = '';
  var headlineText = '';
  int workouts = 0;
  int minutes = 0;
  Color bgColor;

  SmallCardWidget({
    super.key,
    required this.imagePath,
    required this.headlineText,
    required this.workouts,
    required this.minutes,
    required this.bgColor,
  });

  @override
  State<SmallCardWidget> createState() => _SmallCardWidgetState();
}

class _SmallCardWidgetState extends State<SmallCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      elevation: 2.0,
      child: Container(
        padding: EdgeInsets.all(15.0),
        height: 140.0,
        decoration: BoxDecoration(
          color: widget.bgColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 5.0),
                Text(
                  widget.headlineText,
                  style: AppWidget.whiteBoldTextStyle(28.0),
                ),
                Text(
                  "${widget.workouts} Workouts",
                  style: TextStyle(
                    fontSize: 21.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "${widget.minutes} Minutes",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Image(
                  image: AssetImage('assets/images/${widget.imagePath}'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
