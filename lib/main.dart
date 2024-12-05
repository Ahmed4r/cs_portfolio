
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testapp/screens/case_study.dart';
import 'package:testapp/screens/get_in_touch.dart';
import 'package:testapp/screens/homepage.dart';
import 'package:testapp/screens/recent_wrok.dart';

import 'screens/Testimonials.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1280, 4483),
      splitScreenMode: true,
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Homepage.routeName,
        routes: {
          Homepage.routeName: (context) => const Homepage(),
          CaseStudy.routeName: (context) => const CaseStudy(),
          RecentWrok.routeName: (context) => const RecentWrok(),
          Testimonials.routeName: (context) => const Testimonials(),
          GetInTouch.routeName: (context) => const GetInTouch(),
        },
      ),
    );
  }
}
