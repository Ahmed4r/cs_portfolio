
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/appColors.dart';


class Custombody extends StatelessWidget {
  String Name;
  Custombody({super.key, required this.Name});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 600.h),
            Text(Name,
                style: GoogleFonts.raleway(
                    fontSize: ScreenUtil().setSp(50),
                    color: Appcolors.whiteColor,
                    fontWeight: FontWeight.bold)),
            Text(
                'Intro text: Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor incididunt ut\n labore et dolore magna aliqua. ',
                style: GoogleFonts.ibmPlexMono(
                    fontSize: 16.sp, color: const Color(0xff9C9C9C))),
            SizedBox(
              height: 40.h,
            ),
            Container(
              height: 400.h,
              width: 340.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                color: const Color(0xff3F8E00),
              ),
              child: Center(
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Let's Get Started > ",
                    style: GoogleFonts.ibmPlexMono(
                        color: Appcolors.whiteColor, fontSize: 16.sp),
                  ),
                ),
              ),
            ),
          ],
        ),
        CircleAvatar(
          radius: 800.r,
          backgroundImage: const NetworkImage(
              'https://cdn1.iconfinder.com/data/icons/user-pictures/101/malecostume-512.png'),
        )
      ],
    );
  }
}
