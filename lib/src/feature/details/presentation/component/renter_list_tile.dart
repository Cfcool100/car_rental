import 'package:car_rental/src/core/core.dart';
import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:url_launcher/url_launcher.dart';

class RenterTile extends StatelessWidget {
  const RenterTile({super.key, required this.renter, required this.number});

  final Renter renter;
  final String number;

  

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 23.r,
        backgroundImage: AssetImage(renter.avatar),
      ),
      title: Text(
        renter.name,
        style: GoogleFonts.roboto(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: SizedBox(
        width: 90.w,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 30.h,
              width: 35.w,
              decoration: BoxDecoration(
                color: Colors.grey.shade300.withOpacity(.4),
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: const Icon(Remix.chat_3_line),
            ),
            Container(
              height: 30.h,
              width: 35.w,
              decoration: BoxDecoration(
                color: Colors.grey.shade300.withOpacity(.4),
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: GestureDetector(
                onTap: () {
                  print(number);
                  launchUrl(Uri(
                    scheme: 'tel',
                    path: number,
                  ));
                },
                child: const Icon(Remix.phone_line),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
