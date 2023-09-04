import 'package:flutter/material.dart';

class PageDot extends StatelessWidget {
  final Color dotColor;
  const PageDot({super.key, required this.dotColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.0),
      child: CircleAvatar(
        radius: 2.5,
        backgroundColor: dotColor,
      ),
    );
  }
}
