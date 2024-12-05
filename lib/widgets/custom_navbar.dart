import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:testapp/appColors.dart';



import 'package:url_launcher/url_launcher_string.dart';

class CustomNavbar extends StatefulWidget {
  String githublink;
  String linkedinLink;
  CustomNavbar(
      {super.key, required this.githublink, required this.linkedinLink});

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

final section1Key = new GlobalKey();
final section2Key = new GlobalKey();
final section3Key = new GlobalKey();
final section4Key = new GlobalKey();
final section5Key = new GlobalKey();
final List<GlobalKey> targetkeys = [
  section1Key,
  section2Key,
  section3Key,
  section4Key,
  section5Key
];

class _CustomNavbarState extends State<CustomNavbar> {
  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(key.currentContext!,
        duration: Duration(seconds: 1), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 490.h,
        width: 900.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.r),
              bottomRight: Radius.circular(40.r)),
          color: Appcolors.navbarColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(
              flex: 1,
            ),
            InkWell(
              onTap: () {
                scrollToSection(section1Key);
              },
              child: Text('Home',
                  style: GoogleFonts.ibmPlexMono(
                      fontSize: ScreenUtil().setSp(16),
                      color: Appcolors.navbarTextColor)),
            ),
            const Spacer(
              flex: 1,
            ),
            InkWell(
              key: section2Key,
              onTap: () {
                scrollToSection(section2Key);
              },
              child: Text('case Studies',
                  style: GoogleFonts.ibmPlexMono(
                      fontSize: 16.sp, color: Appcolors.navbarTextColor)),
            ),
            const Spacer(
              flex: 1,
            ),
            InkWell(
              key: section3Key,
              onTap: () {
                scrollToSection(section3Key);
              },
              child: Text(
                'Testimonials',
                style: GoogleFonts.ibmPlexMono(
                    fontSize: 16.sp, color: Appcolors.navbarTextColor),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            InkWell(
              key: section4Key,
              onTap: () {
                scrollToSection(section4Key);
              },
              child: Text(
                'Recent work',
                style: GoogleFonts.ibmPlexMono(
                    fontSize: 16.sp, color: Appcolors.navbarTextColor),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            InkWell(
              onTap: () {
                scrollToSection(section5Key);
              },
              child: Text(
                'Get In Touch',
                style: GoogleFonts.ibmPlexMono(
                    fontSize: 16.sp, color: Appcolors.navbarTextColor),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            IconButton(
              onPressed: () {
                final url = widget.linkedinLink;

                launchUrl(url);
              },
              icon: const FaIcon(FontAwesomeIcons.linkedin),
              color: Appcolors.navbarTextColor,
            ),
            IconButton(
              onPressed: () {
                final url = widget.githublink;
                launchUrl(url);
              },
              icon: const FaIcon(FontAwesomeIcons.github),
              color: Appcolors.navbarTextColor,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> launchUrl(String urlString) async {
    if (await canLaunchUrlString(urlString)) {
      await launchUrlString(urlString);
    } else {
      throw 'Could not launch $urlString';
    }
  }
}
