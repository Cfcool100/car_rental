import 'package:car_rental/src/core/core.dart';
import 'package:car_rental/src/feature/details/bloc/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final ProductsBloc productsBloc = ProductsBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => productsBloc,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.h), child: appBar()),
        backgroundColor: Colors.grey.shade200,
        bottomNavigationBar: const BottomNavBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: CustomScrollView(
            controller: ScrollController(),
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(15.h),
                    Text(
                      'Let\'s find your favourite \ncar here',
                      style: GoogleFonts.roboto(
                        color: AppColor.charade,
                        fontWeight: FontWeight.w500,
                        fontSize: 22.sp,
                      ),
                    ),
                    Gap(5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Flexible(
                          child: AppSearchBar(),
                        ),
                        AppRoundedButton(icon: MdiIcons.tuneVariant),
                      ],
                    ),
                    Gap(25.h),
                    const SectionTitle(title: 'Trending Brands'),
                    SizedBox(
                      height: 88.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: Data.brandname.length,
                        itemBuilder: (context, index) => Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 55.h,
                              width: 80.w,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18.w, vertical: 10.h),
                              margin: EdgeInsets.only(right: 8.w, top: 12.h),
                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(10.r)),
                              child: Brand(
                                Data.brand[index],
                              ),
                            ),
                            Text(
                              Data.brandname[index],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverGap(20.h),
              const SliverToBoxAdapter(
                child: Column(
                  children: [
                    SectionTitle(title: 'New Cars'),
                  ],
                ),
              ),
              SliverList.builder(
                itemCount: Data.productsName.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    context.push('/${PageRoutes.detailPage}');
                  },
                  child: Container(
                    height: 120.h,
                    margin: EdgeInsets.only(top: index == 0 ? 10.h : 13.h),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      border: Border.all(width: .2, color: Colors.grey),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10.h, left: 10.w),
                            child: Image.asset(
                              Data.productsImg[index],
                              fit: BoxFit.contain,
                              width: 90,
                              height: 150,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Data.productsName[index],
                                  style: GoogleFonts.roboto(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                            
                                    children: [
                                      Text(
                                        '\$450',
                                        style: GoogleFonts.roboto(
                                          // color: ,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        '/Day',
                                        style: GoogleFonts.roboto(
                                          color: Colors.grey.shade300,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ]),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star_rate_rounded,
                                      color: Colors.orange.shade300,
                                    ),
                                    Text(
                                      '4.9',
                                      style: GoogleFonts.roboto(
                                          color: AppColor.santasGray,
                                          fontSize: 14.sp),
                                    ),
                                    Gap(8.w),
                                    Stack(
                                      children: [
                                        SizedBox(
                                          width: 50.w,
                                          height: 15.h,
                                        ),
                                        CircleAvatar(
                                          radius: 8.r,
                                          backgroundImage: AssetImage(MyImage.images.profile.profile.path),
                                        ),
                                        Positioned(
                                          left: 12.w,
                                          child: CircleAvatar(
                                            radius: 8.r,
                                            backgroundImage: AssetImage(MyImage.images.profile.profile.path),
                                          ),
                                        ),
                                        Positioned(
                                          left: 24.w,
                                          child: CircleAvatar(
                                            radius: 8.r,
                                            backgroundImage: AssetImage(MyImage.images.profile.profile.path),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Gap(5.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 85.w,
                                      height: 28.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.r),
                                        color: AppColor.charade,
                                      ),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Rent Now',
                                              style: GoogleFonts.roboto(
                                                color: AppColor.white,
                                                letterSpacing: 1,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 30.h,
                                      width: 35.w,
                                      decoration: BoxDecoration(
                                        color:
                                            Colors.grey.shade300.withOpacity(.4),
                                        borderRadius: BorderRadius.circular(50.r),
                                      ),
                                      child: const Icon(
                                        IonIcons.heart,
                                        color: Colors.redAccent,
                                      ),
                                    ),
                                    const Gap(10)
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
