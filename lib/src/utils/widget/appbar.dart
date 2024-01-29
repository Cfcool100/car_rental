import 'package:car_rental/src/core/core.dart';
import 'package:flutter/material.dart';

AppBar appBar() {
  return AppBar(
    backgroundColor: const Color(0XFFF3F3F3),
    leading: RotatedBox(
      quarterTurns: 9,
      child: Container(
        padding: EdgeInsets.all(4.dm),
        margin: EdgeInsets.only(left: 5.w, top: 0.h, bottom: 0.h),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: IconButton(
          icon: const Icon(Icons.bar_chart_rounded),
          onPressed: () {},
        ),
      ),
    ),
    actions: [
      Row(
        children: [
          const Icon(Icons.location_on_rounded),
          Text(
            'Carlifornia, US',
            style: GoogleFonts.robotoFlex(
              fontSize: 16.sp,
              // fontWeight: FontWeight.w500
            ),
          ),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
      SizedBox(
        width: 50.w,
      ),
      Padding(
        padding: EdgeInsets.only(right: 18.w),
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(5.r),
            image: DecorationImage(
                image: AssetImage(MyImage.images.profile.profile.path),
                fit: BoxFit.cover),
          ),
        ),
      )
    ],
  );
}
