import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'screen_type/splash_screen_type.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const SplashMobileView(),
      tablet: const SplashTabletView(),
      desktop: const SplashDesktopView(),
    );
  }
}
