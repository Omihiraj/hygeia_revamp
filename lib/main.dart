import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hygeia_revamp/screens/login/first_screen.dart';

import 'routes/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Hygeia Revamp',
          theme: ThemeData(
            fontFamily: "HelveticaNeue",
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          onGenerateRoute: RouteGenerator.generateRoute,
          home: child,
        );
      },
      child: const FirstScreen(),
    );
  }
}
