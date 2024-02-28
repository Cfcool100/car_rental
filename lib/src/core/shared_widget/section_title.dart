import 'package:car_rental/src/core/core.dart';
import 'package:car_rental/src/feature/details/bloc/products_bloc/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize: 20.sp,
          ),
        ),
        GestureDetector(
          onTap: () {
            context.read<ProductsBloc>().add(ProductFetchEvent());
          },
          child: Row(
            children: [
              Text(
                'View All ',
                style: GoogleFonts.roboto(
                  color: AppColor.santasGray,
                  fontWeight: FontWeight.w300,
                  fontSize: 14.sp,
                ),
              ),
              // const Icon(
              //   Icons.arrow_forward_ios_rounded,
              //   size: 14,
              //   color: AppColor.santasGray,
              // ),
            ],
          ),
        )
      ],
    );
  }
}
