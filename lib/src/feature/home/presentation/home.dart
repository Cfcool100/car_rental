import 'package:car_rental/src/core/core.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: AppColor.alabaster,
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Text(
                'Let\'s find your favourite \ncar here',
                style: GoogleFonts.roboto(
                  color: AppColor.charade,
                  fontWeight: FontWeight.w500,
                  fontSize: 25.sp,
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
