import 'package:car_rental/src/core/core.dart';
import 'package:car_rental/src/core/data/dummy_data.dart';
import 'package:car_rental/src/feature/details/bloc/products_bloc/products_bloc.dart';
import 'package:car_rental/src/feature/details/presentation/component/characteristic.dart';
import 'package:car_rental/src/feature/details/presentation/component/renter_list_tile.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:remixicon/remixicon.dart';
import 'package:share_plus/share_plus.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/services.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.productId});

  final int? productId;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int currentIndex = 0;

  late Product currentProduct;
  late PageController controller;

  void _onShareXFileFromAssets(BuildContext context, Product product) async {
    final box = context.findRenderObject() as RenderBox?;
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    final data = await rootBundle.load(product.images.first);
    final buffer = data.buffer;
    final shareResult = await Share.shareXFiles(
      [
        XFile.fromData(
          buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
          name: 'flutter_logo.png',
          mimeType: 'image/png',
        ),
      ],
      text: product.description,
      subject: product.libelle,
      sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
    );

    scaffoldMessenger.showSnackBar(getResultSnackBar(shareResult));
  }

  SnackBar getResultSnackBar(ShareResult result) {
    return SnackBar(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Share result: ${result.status}"),
          if (result.status == ShareResultStatus.success)
            Text("Shared to: ${result.raw}")
        ],
      ),
    );
  }

  @override
  void initState() {
    currentProduct = DummyData.products
        .firstWhere((element) => element.id == widget.productId);
    controller = PageController(
      initialPage: currentIndex,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        backgroundColor: AppColor.alabaster,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: AppBar(
            backgroundColor: AppColor.santasGray.withOpacity(.15),
            leadingWidth: 60.w,
            leading: GestureDetector(
              onTap: () => context.pop(),
              child: Container(
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
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  _onShareXFileFromAssets(context, currentProduct);
                },
                child: Container(
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
                ),
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: .45.sh - 45.h,
                      decoration: BoxDecoration(
                        color: AppColor.santasGray.withOpacity(.15),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30.r),
                            bottomRight: Radius.circular(30.r)),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: PageView(
                              controller: controller,
                              children: [
                                // a = [2,3]
                                // b = [9]
                                //[...a, ...b]
                                ...currentProduct.images.map(
                                  (product) => Container(
                                    margin: EdgeInsets.only(bottom: 10.h),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(product),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                )
                                // Container(
                                //   margin: EdgeInsets.only(bottom: 10.h),
                                //   decoration: BoxDecoration(
                                //     image: DecorationImage(
                                //       image: AssetImage(MyImage
                                //           .images.products.bmw4Serisi.path),
                                //       fit: BoxFit.contain,
                                //     ),
                                //   ),
                                // ),
                                // Container(
                                //   margin: EdgeInsets.only(bottom: 10.h),
                                //   decoration: BoxDecoration(
                                //     image: DecorationImage(
                                //       image: AssetImage(MyImage
                                //           .images.products.bmw4Serisi.path),
                                //       fit: BoxFit.contain,
                                //     ),
                                //   ),
                                // ),
                                // Container(
                                //   margin: EdgeInsets.only(bottom: 10.h),
                                //   decoration: BoxDecoration(
                                //     image: DecorationImage(
                                //       image: AssetImage(MyImage
                                //           .images.products.bmw4Serisi.path),
                                //       fit: BoxFit.contain,
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                          SmoothPageIndicator(
                            controller: controller,
                            effect: WormEffect(
                                dotWidth: 8.r,
                                dotHeight: 8.r,
                                activeDotColor: AppColor.charade),
                            count: currentProduct.images.length,
                          ),
                          Gap(18.h),
                        ],
                      ),
                    ),
                    Positioned(
                      // top: 5.h,
                      left: 20.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            currentProduct.libelle,
                            style: GoogleFonts.poppins(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rate_rounded,
                                color: Colors.orange.shade300,
                              ),
                              Text(currentProduct.rate.toString(),
                                  style: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600)),
                              Gap(10.w),
                              Text('(${currentProduct.reviews} Reviews)',
                                  style: GoogleFonts.poppins(
                                      color: Colors.grey.shade500))
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(18.0.w, 15.h, 18.w, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Overview',
                        style: GoogleFonts.roboto(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          letterSpacing: .5.sp,
                        ),
                      ),
                      ExpandableText(
                        currentProduct.description,
                        expandText: 'Read more',
                        collapseText: 'see less',
                        linkStyle: GoogleFonts.roboto(color: AppColor.charade),
                        expanded: false,
                        style: GoogleFonts.roboto(
                          fontSize: 15.sp,
                          color: AppColor.santasGray,
                        ),
                      ),
                      Gap(10.h),
                      SizedBox(
                        height: 70.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: currentProduct.details.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  EdgeInsets.only(left: index == 0 ? 0 : 15.w),
                              child: Characteristic(
                                title: currentProduct.details[index].libelle,
                                icon: currentProduct.details[index].image,
                              ),
                            );
                          },
                        ),
                      ),
                      Gap(12.h),
                      Text(
                        'Renter',
                        style: GoogleFonts.roboto(
                          fontSize: 21.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      RenterTile(
                        renter: currentProduct.renter,
                        number: currentProduct.renter.contact,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: Material(
          elevation: 30,
          child: Container(
            padding: EdgeInsets.only(
                bottom: 28.h, top: 18.h, left: 20.w, right: 20.w),
            decoration: BoxDecoration(
              color: AppColor.alabaster,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: const Offset(0, -1),
                  blurRadius: 5,
                  spreadRadius: .4,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '\$450',
                      style: GoogleFonts.roboto(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      ' /Day',
                      style: GoogleFonts.roboto(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.normal,
                        color: AppColor.santasGray,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: .55.sw,
                  padding: EdgeInsets.symmetric(vertical: 8.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: AppColor.charade,
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      // context.push('/${PageRoutes.home}');
                    },
                    child: Text(
                      'Rent Now',
                      style: GoogleFonts.roboto(
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
