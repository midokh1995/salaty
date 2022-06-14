import 'package:flutter/material.dart';
class TextBanar extends StatelessWidget {
  const TextBanar({Key? key,required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
    child: Text('$text',style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),),
    );
  }
}
