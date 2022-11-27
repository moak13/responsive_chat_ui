import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../view_model/settings_viewmodel.dart';

class SettingsMobileView extends StatelessWidget {
  const SettingsMobileView({Key? key}) : super(key: key);

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
              'Settings Mobile View',
            ),
          ),
        );
      },
    );
  }
}
