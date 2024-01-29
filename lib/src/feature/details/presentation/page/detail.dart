import 'package:car_rental/src/core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:remixicon/remixicon.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.alabaster,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.h),
        child: AppBar(
          leadingWidth: 60.w,
          leading: Container(
            margin: EdgeInsets.only(left: 10.w),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Icon(
              EvaIcons.arrow_ios_back_outline,
              size: 25.w,
            ),
          ),
          actions: [
            Container(
              height: 50.h,
              width: 50.w,
              margin: EdgeInsets.only(right: 10.w),
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Icon(
                Remix.share_line,
                size: 25.w,
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: .32.sh,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(MyImage.images.lambo.path),
                ),
              ),
            ),
            Text(
              'Overview',
              style: GoogleFonts.roboto(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                letterSpacing: .5.sp,
              ),
            ),
            Text(
              'The Maruti Suzuki Alto is good city runabout \nthat\'s quite zippy to drive. Like',
              style: GoogleFonts.roboto(
                fontSize: 16.sp,
                color: AppColor.santasGray,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50.h,
                  width: 55.w,
                  decoration: BoxDecoration(
                    color: const Color(0XFFF7F7F7),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: const Icon(Icons.event_seat_outlined),
                ),
                Container(
                  height: 50.h,
                  width: 55.w,
                  decoration: BoxDecoration(
                    color: const Color(0XFFF7F7F7),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: const Icon(IonIcons.battery_charging),
                ),
                Container(
                  height: 50.h,
                  width: 55.w,
                  decoration: BoxDecoration(
                    color: const Color(0XFFF7F7F7),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: const Icon(Icons.speed_outlined),
                ),
                Container(
                  height: 50.h,
                  width: 55.w,
                  decoration: BoxDecoration(
                    color: const Color(0XFFF7F7F7),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: const Icon(FontAwesomeIcons.mapPin),
                ),
                Container(
                  height: 50.h,
                  width: 55.w,
                  decoration: BoxDecoration(
                    color: const Color(0XFFF7F7F7),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: const Icon(CupertinoIcons.briefcase),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
