import 'package:car_rental/src/core/core.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Gap(0),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 300.h,
              decoration: BoxDecoration(
                color: AppColor.black,
                image: DecorationImage(
                  image: AssetImage(MyImage.images.lambo.path),
                  alignment: Alignment.centerRight,
                  fit: BoxFit.cover,
                  repeat: ImageRepeat.repeatX,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Let\'s Start A New \nExperience',
                        style: GoogleFonts.roboto(
                          color: AppColor.alabaster,
                          fontWeight: FontWeight.w500,
                          fontSize: 35.sp,
                        ),
                      ),
                      Text(
                        'Choose your favourit car, rent it \nand enjoy new Experience!',
                        style: GoogleFonts.roboto(
                          color: AppColor.santasGray,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.5.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              padding: EdgeInsets.symmetric(vertical: 8.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: AppColor.white,
              ),
              child: MaterialButton(
                onPressed: () {
                  context.push('/${PageRoutes.home}');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Let\'s Start',
                      style: GoogleFonts.roboto(
                        color: AppColor.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 21.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
