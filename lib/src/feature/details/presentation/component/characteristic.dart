// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:car_rental/src/core/core.dart';

class Characteristic extends StatelessWidget {
  const Characteristic({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 45.h,
          width: 50.w,
          decoration: BoxDecoration(
            color: Colors.grey.shade200.withOpacity(.6),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Icon(icon),
        ),
        Text(title),
      ],
    );
  }
}


// Container(
//                       height: 50.h,
//                       width: 55.w,
//                       decoration: BoxDecoration(
//                         color: const Color(0XFFF7F7F7),
//                         borderRadius: BorderRadius.circular(8.r),
//                       ),
//                       child: const Icon(Icons.event_seat_outlined),
//                     ),
//                     Container(
//                       height: 50.h,
//                       width: 55.w,
//                       decoration: BoxDecoration(
//                         color: const Color(0XFFF7F7F7),
//                         borderRadius: BorderRadius.circular(8.r),
//                       ),
//                       child: const Icon(IonIcons.battery_charging),
//                     ),
//                     Container(
//                       height: 50.h,
//                       width: 55.w,
//                       decoration: BoxDecoration(
//                         color: const Color(0XFFF7F7F7),
//                         borderRadius: BorderRadius.circular(8.r),
//                       ),
//                       child: const Icon(Icons.speed_outlined),
//                     ),
//                     Container(
//                       height: 50.h,
//                       width: 55.w,
//                       decoration: BoxDecoration(
//                         color: const Color(0XFFF7F7F7),
//                         borderRadius: BorderRadius.circular(8.r),
//                       ),
//                       child: const Icon(FontAwesomeIcons.mapPin),
//                     ),
//                     Container(
//                       height: 50.h,
//                       width: 55.w,
//                       decoration: BoxDecoration(
//                         color: const Color(0XFFF7F7F7),
//                         borderRadius: BorderRadius.circular(8.r),
//                       ),
//                       child: const Icon(CupertinoIcons.briefcase),
//                     ),