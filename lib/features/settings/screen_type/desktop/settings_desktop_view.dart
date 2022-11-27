import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../view_model/settings_viewmodel.dart';

class SettingsDesktopView extends StatelessWidget {
  const SettingsDesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingsViewModel>.reactive(
      viewModelBuilder: () => SettingsViewModel(),
      builder: (
        BuildContext context,
        SettingsViewModel model,
        Widget? child,
      ) {
        return const Scaffold(
          body: Center(
            child: Text(
              'Settings Desktop View',
            ),
          ),
        );
      },
    );
  }
}
