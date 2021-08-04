import 'package:flutter/material.dart';

class TimeLine extends StatelessWidget {
  // const TimeLine({Key? key}) : super(key: key);

  final String time;

  TimeLine({required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFF9cafbe),
      ),
      child: Text(
        time,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
