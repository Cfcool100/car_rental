import 'package:car_rental/src/core/core.dart';
import 'package:car_rental/src/core/data/dummy_data.dart';
import 'package:car_rental/src/feature/details/bloc/brands_bloc/brand_bloc.dart';
import 'package:car_rental/src/feature/details/bloc/products_bloc/products_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final ProductsBloc productsBloc = ProductsBloc()
    ..add(ProductFetchEvent(true));

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => productsBloc,
        ),
        BlocProvider(
          create: (context) => BrandsBloc()..add(const BrandsFetchEvent()),
        ),
      ],
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.h), child: appBar()),
        backgroundColor: Colors.grey.shade200,
        bottomNavigationBar: const BottomNavBar(),
        body: BlocBuilder<ProductsBloc, ProductsState>(
          builder: (context, state) {
            if (state is ProductsLoadState || state is ProductsInitial) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return Padding(
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
                            Flexible(
                              child: AppSearchBar(
                                prefixIcon: const Icon(
                                  CupertinoIcons.search,
                                  color: AppColor.black,
                                ),
                                onTap: () {
                                  //
                                  context.push('///${PageRoutes.searchPage}');
                                },
                              ),
                            ),
                            AppRoundedButton(icon: MdiIcons.tuneVariant),
                          ],
                        ),
                        Gap(25.h),
                        const SectionTitle(title: 'Trending Brands'),
                        BlocBuilder<BrandsBloc, BrandsState>(
                          builder: (context, state) {

                            if (state is BrandsSuccessFetchState) {
                            
                            return SizedBox(
                              height: 88.h,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: state.brands.length,
                                itemBuilder: (context, index) => Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        final value =
                                            state.brands[index].libelle;
                                        print(state.brands[index].libelle);
                                        context.read<ProductsBloc>().add(
                                            ProductSelectByCategoryEvent(
                                                value));
                                      },
                                      child: Container(
                                        height: 55.h,
                                        width: 80.w,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 18.w, vertical: 10.h),
                                        margin: EdgeInsets.only(
                                            right: 8.w, top: 12.h),
                                        decoration: BoxDecoration(
                                            color: AppColor.white,
                                            borderRadius:
                                                BorderRadius.circular(10.r)),
                                        child: Brand(
                                          state.brands[index].image,
                                        ),
                                      ),
                                    ),
                                    Text(state.brands[index].libelle)
                                  ],
                                ),
                              ),
                            );
                          
                            }
                            return SizedBox();
                          },
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
                    itemCount: (state as ProductsSuccessState).products.length,
                    itemBuilder: (context, index) => Container(
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
                            child: GestureDetector(
                              onTap: () {
                                context.push(
                                  '/${PageRoutes.detailPage}',
                                  extra: (state as ProductsSuccessState)
                                      .products[index]
                                      .id,
                                );
                              },
                              child: Container(
                                margin:
                                    EdgeInsets.only(bottom: 10.h, left: 10.w),
                                child: Image.asset(
                                  (state as ProductsSuccessState)
                                      .products[index]
                                      .images
                                      .first,
                                  fit: BoxFit.contain,
                                  width: 90,
                                  height: 150,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    (state as ProductsSuccessState)
                                        .products[index]
                                        .libelle,
                                    style: GoogleFonts.roboto(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Row(children: [
                                    Text(
                                      '\$${(state as ProductsSuccessState).products[index].price}',
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star_rate_rounded,
                                        color: Colors.orange.shade300,
                                      ),
                                      Text(
                                        '${(state as ProductsSuccessState).products[index].rate}',
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
                                            backgroundImage: AssetImage(MyImage
                                                .images.profile.profile.path),
                                          ),
                                          Positioned(
                                            left: 12.w,
                                            child: CircleAvatar(
                                              radius: 8.r,
                                              backgroundImage: AssetImage(
                                                  MyImage.images.profile.profile
                                                      .path),
                                            ),
                                          ),
                                          Positioned(
                                            left: 24.w,
                                            child: CircleAvatar(
                                              radius: 8.r,
                                              backgroundImage: AssetImage(
                                                  MyImage.images.profile.profile
                                                      .path),
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
                                          borderRadius:
                                              BorderRadius.circular(10.r),
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
                                      GestureDetector(
                                            onTap: () {
                                              context.read<ProductsBloc>().add(
                                                  LikeButtonClickedEvent(state.products[index].id));
                                            },
                                            child: Container(
                                              height: 30.h,
                                              width: 35.w,
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade300
                                                    .withOpacity(.4),
                                                borderRadius:
                                                    BorderRadius.circular(50.r),
                                              ),
                                              child: Icon(
                                                IonIcons.heart,
                                                color: state.products[index].isLiked
                                                    ? Colors.redAccent
                                                    : AppColor.white,
                                              ),
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
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
