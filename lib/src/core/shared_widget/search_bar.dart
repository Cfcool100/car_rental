import 'package:car_rental/src/core/core.dart';
import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key, this.onTap, this.prefixIcon, this.onChanged});

  final void Function()? onTap;
  final Widget? prefixIcon;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: prefixIcon == null
          ? EdgeInsets.only(bottom: 1.h, right: 30.w)
          : EdgeInsets.only(top: 5.h, right: 5.w),
      padding: EdgeInsets.symmetric(
          vertical: 3.h, horizontal: prefixIcon != null ? 0 : 18.w),
      decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: const Offset(0, 0),
              blurRadius: 6,
              spreadRadius: 1,
            )
          ]),
      child: TextField(
        onChanged: onChanged,
        onTap: onTap,
        // enabled: enable,
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        decoration: InputDecoration(
          hintText: 'Find your car',
          hintStyle: GoogleFonts.roboto(
            color: AppColor.santasGray,
            fontWeight: FontWeight.w400,
            fontSize: 16.sp,
          ),
          border: InputBorder.none,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
