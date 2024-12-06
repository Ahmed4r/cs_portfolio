import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:testapp/appColors.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testapp/screens/Testimonials.dart';
import 'package:testapp/screens/case_study.dart';
import 'package:testapp/screens/get_in_touch.dart';
import 'package:testapp/screens/recent_wrok.dart';
import 'package:testapp/widgets/CustomworkContinter.dart';
import 'package:testapp/widgets/custom_navbar.dart';
import 'package:testapp/widgets/custombody.dart';

class Homepage extends StatefulWidget {
  static const String routeName = 'homepage';
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final redKey = GlobalKey();
  final yellowKey = GlobalKey();
  final greenKey = GlobalKey();
  final purpleKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomNavbar(
              githublink: 'https://github.com/Ahmed4r',
              linkedinLink:
                  'https://www.linkedin.com/in/ahmed-hegazy-9ba768252',
            ),
            const CustomBody(
              description: 'Flutter Developer',
              name: "Name",
              imagePath: 'assets/image.jpeg',
            ),
            const SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0).w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Worked With',
                    style: GoogleFonts.ibmPlexMono(
                        color: Appcolors.whiteColor, fontSize: 16.sp),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Customworkcontinter(
                    iconName: FontAwesomeIcons.dropbox,
                    companyName: 'Dropbox',
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Customworkcontinter(
                    iconName: FontAwesomeIcons.facebook,
                    companyName: 'Facebook',
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Customworkcontinter(
                    companyName: 'Microsoft',
                    iconName: FontAwesomeIcons.microsoft,
                  )
                ],
              ),
            ),
            CaseStudy(
              key: section2Key,
            ),
            Testimonials(
              key: section3Key,
            ),
            RecentWrok(
              key: section4Key,
            ),
            GetInTouch(
              key: section5Key,
            ),
          ],
        ),
      ),
    );
  }
}
