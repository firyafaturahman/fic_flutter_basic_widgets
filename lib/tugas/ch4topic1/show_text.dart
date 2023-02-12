import 'package:flutter/material.dart';

class ShowText extends StatelessWidget {
  final String text;
  final TextStyle style;
  const ShowText({
    Key? key,
    required this.text,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
