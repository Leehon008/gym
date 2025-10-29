import 'package:flutter/material.dart';

class SmallCardWidget extends StatelessWidget {
  String imagePath = '';

  SmallCardWidget({super.key, required final imagePath}) {
    this.imagePath = imagePath;
  }

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      elevation: 2.0,
      child: Container(
        width: 160.0,
        height: 160.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage('assets/images/$imagePath'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
