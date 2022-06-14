import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'component/prayerTime.dart';
import 'component/textBanar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image:  DecorationImage(
                      image: new AssetImage('images/banar.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                    top: 50,
                    child: TextBanar(text: 'اللهم صلي على محمد',),
                ),
                Positioned(
                  right: 10,
                  top: 70,
                  child: TextBanar(text: 'لا اله الا الله',),
                ),
                Positioned(
                  right: 10,
                  bottom: 50,
                  child: TextBanar(text: 'تطبيق صلاتي',),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Container(
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        PrayerTime(name: 'الفجر',time: '5:30',appointment: 'صباحاً',),
                        PrayerTime(name: 'الظهر',time: '12:30',appointment: 'مساءا',),
                        PrayerTime(name: 'العصر',time: '3:30',appointment: 'مساءا',),
                        PrayerTime(name: 'المغرب',time: '6:30',appointment: 'مساءا',),
                        PrayerTime(name: 'العشاء',time: '7:30',appointment: 'مساءا',),
                      ],
                    ),
                  ),
                )
            ),
          ],
        ),

      ),
    ),
  ));
}