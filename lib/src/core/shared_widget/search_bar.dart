
import 'package:car_rental/src/core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.h, right: 5.w),
      padding: EdgeInsets.symmetric(vertical: 3.h),
      decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(10.r)),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Find your car',
          hintStyle: GoogleFonts.roboto(
              color: AppColor.santasGray,
              fontWeight: FontWeight.w400,
              fontSize: 16.sp),
          border: InputBorder.none,
          prefixIcon: const Icon(
            CupertinoIcons.search,
            color: AppColor.black,
          ),
        ),
      ),
    );
  }
}
