import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'screen_type/settings_screen_type.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const SettingsMobileView(),
      tablet: (context) => const SettingsTabletView(),
      desktop: (context) => const SettingsDesktopView(),
    );
  }
}
