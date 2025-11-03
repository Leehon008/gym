import 'package:flutter/material.dart';
import 'package:hymns/services/support_widget.dart';

class SmallCardWidget extends StatefulWidget {
  final List workoutList;
  final Axis scrollDirection;

  const SmallCardWidget({
    required this.workoutList,
    this.scrollDirection = Axis.horizontal,
    super.key,
  });

  @override
  State<SmallCardWidget> createState() => _SmallCardWidgetState();
}

class _SmallCardWidgetState extends State<SmallCardWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: widget.scrollDirection,
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      children: [
        for (final workout in widget.workoutList) ...[
          SizedBox(width: 5.0),
          Card.outlined(
            elevation: 2.0,
            child: Container(
              padding: EdgeInsets.all(15.0),
              height: 140.0,
              decoration: BoxDecoration(
                color: (workout['bgColor'] ?? Colors.white12) as Color,
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
                        workout['headlineText'] as String,
                        style: AppWidget.whiteBoldTextStyle(28.0),
                      ),
                      Text(
                        workout['workouts'] as String,
                        style: TextStyle(
                          fontSize: 21.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.access_time,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          const SizedBox(width: 5.0),
                          Text(
                            workout['minutes'] as String,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color:
                                  (workout['textColor'] ?? Colors.blue)
                                      as Color,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage(
                          'assets/images/${workout['imagePath'] as String}',
                        ),
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ],
    );
  }
}
