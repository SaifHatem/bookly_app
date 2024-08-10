import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    //const BooklyApp(),
    DevicePreview(
      builder: (context) => const BooklyApp(),
      enabled: !kReleaseMode,
    ),
  );
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouters.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        useMaterial3: true,
      ),
    );
  }
}
