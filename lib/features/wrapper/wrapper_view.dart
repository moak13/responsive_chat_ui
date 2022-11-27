import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'screen_type/wrapper_screen_type.dart';

class WrapperView extends StatelessWidget {
  const WrapperView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const WrapperMobileView(),
      tablet: (context) => const WrapperTabletView(),
      desktop: (context) => const WrapperDesktopView(),
    );
  }
}
