import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/appColors.dart';

class CustomBody extends StatelessWidget {
  final String name;
  final String imagePath;
  final String description;

  const CustomBody({
    super.key,
    required this.name,
    required this.description,
    required this.imagePath,
  });

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

            Text(
              name,
              style: GoogleFonts.raleway(
                fontSize: ScreenUtil().setSp(50),
                color: Appcolors.whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Description Text
            Text(
              description,
              style: GoogleFonts.ibmPlexMono(
                fontSize: 16.sp,
                color: const Color(0xff9C9C9C),
              ),
            ),
            SizedBox(height: 40.h),

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
                    "Let's Get Started >",
                    style: GoogleFonts.ibmPlexMono(
                      color: Appcolors.whiteColor,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // Profile Image
        Transform.translate(
          offset: Offset(0, 360.h),
          child: CircleAvatar(
            radius: 800.r,
            backgroundImage: _getImage(),
          ),
        )
      ],
    );
  }

  // Fallback for the image in case of error
  ImageProvider _getImage() {
    try {
      return AssetImage(imagePath);
    } catch (e) {
      return const AssetImage(
          'assets/default-placeholder.png'); // Add a default placeholder asset
    }
  }
}
