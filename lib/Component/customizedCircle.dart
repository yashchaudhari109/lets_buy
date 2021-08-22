import 'package:flutter/material.dart';

class CustomizedCircle extends StatelessWidget {
  const CustomizedCircle({Key? key, this.text, this.icon}) : super(key: key);
  final text;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        minRadius: 26.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: TextStyle(fontSize: 10)),
            Icon(
              icon,
              size: 14,
            ),
          ],
        ),
      ),
    );
  }
}
