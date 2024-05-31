import 'package:flutter/material.dart';

class Emojies extends StatelessWidget {
  final String emojies;
  const Emojies({
    Key? key,
    required this.emojies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(12),
      child: Text(
        emojies,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
