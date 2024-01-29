import 'package:car_rental/src/core/core.dart';
import 'package:car_rental/src/feature/details/bloc/products_bloc.dart';
import 'package:car_rental/src/feature/details/models/detail.models.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});


  final ProductsBloc productsBloc = ProductsBloc();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: appBar(),
        backgroundColor: const Color(0XFFF3F3F3),
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
                    Text(
                      'Let\'s find your favourite \ncar here',
                      style: GoogleFonts.roboto(
                        color: AppColor.charade,
                        fontWeight: FontWeight.w500,
                        fontSize: 25.sp,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: AppSearchBar(),
                        ),
                        AppRoundedButton(icon: Icons.tune_rounded),
                      ],
                    ),
                    Gap(18.h),
                    const SectionTitle(title: 'Trending Brands'),
                    SizedBox(
                      height: 85.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: Data.brandname.length,
                        itemBuilder: (context, index) => Column(
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
                                colorFilter: const ColorFilter.mode(
                                  AppColor.white,
                                  BlendMode.color,
                                ),
                              ),
                            ),
                            Text(Data.brandname[index])
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverGap(18.h),
              const SliverToBoxAdapter(
                child: Column(
                  children: [
                    SectionTitle(title: 'New Cars'),
                  ],
                ),
              ),
              SliverList.builder(
                itemCount: 4,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    // productsBloc.add(ProductClickedEvent(selectedItem: ));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Image.asset(
                            MyImage.images.lambo.path,
                            fit: BoxFit.cover,
                            width: 90,
                            height: 150,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Maruti Alto'),
                              const Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('\$450'),
                                    Text('/Day'),
                                  ]),
                              Container(
                                height: 20,
                                color: AppColor.charade,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          const MaterialStatePropertyAll(
                                              AppColor.charade),
                                      shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Rent now',
                                      style: GoogleFonts.roboto(
                                          color: AppColor.white),
                                    ),
                                  ),
                                  const Icon(
                                    IonIcons.heart,
                                    color: Colors.redAccent,
                                  ),
                                  const Gap(0)
                                ],
                              )
                            ],
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
