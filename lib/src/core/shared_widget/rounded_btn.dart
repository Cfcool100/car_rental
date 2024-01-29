import 'package:car_rental/src/core/core.dart';
import 'package:flutter/material.dart';



class AppRoundedButton extends StatelessWidget {
  const AppRoundedButton({
    super.key,
    required this.icon
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.dm),
      margin: EdgeInsets.only(left: 5.w, top: 5.h),
      decoration: BoxDecoration(
        color: AppColor.black,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: IconButton(
        color: AppColor.white,
        onPressed: () {},
        icon: Icon(
          icon,
          size: 30,
        ),
      ),
    );
  }
}
