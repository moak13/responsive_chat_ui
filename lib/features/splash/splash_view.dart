import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'screen_type/splash_screen_type.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const SplashMobileView(),
      tablet: (context) => const SplashTabletView(),
      desktop: (context) => const SplashDesktopView(),
    );
  }
}
