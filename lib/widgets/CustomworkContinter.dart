
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/appColors.dart';



class Customworkcontinter extends StatelessWidget {
  IconData iconName;
  String companyName;
  Customworkcontinter(
      {super.key, required this.iconName, required this.companyName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340.h,
      width: 170.w,
      decoration: BoxDecoration(
        backgroundBlendMode: BlendMode.overlay,
        border: Border.all(color: const Color(0xff1B1B1B)),
        borderRadius: BorderRadius.circular(40.r),
        color: const Color(0xff808088e00),
      ),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FaIcon(
            iconName, //
            color: Colors.grey,
          ),
          Text(
            companyName,
            style: GoogleFonts.aBeeZee(
                color: Appcolors.whiteColor, fontSize: ScreenUtil().setSp(14)),
          )
        ],
      )),
    );
  }
}
