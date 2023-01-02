import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'screen_type/wrapper_screen_type.dart';

class WrapperView extends StatelessWidget {
  const WrapperView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const WrapperMobileView(),
      tablet: const WrapperTabletView(),
      desktop: const WrapperDesktopView(),
    );
  }
}
