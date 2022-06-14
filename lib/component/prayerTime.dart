import 'package:flutter/material.dart';

class PrayerTime extends StatelessWidget {
  const PrayerTime({Key? key,required this.name,required this.time,required this.appointment}) : super(key: key);

  final String name;
  final String time;
  final String appointment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal[900],
          borderRadius: BorderRadius.circular(5),
        ),
        width: 300,
        height: 50,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('$name' ,style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
              Text('$time' ,style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
              Text('$appointment' ,style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
