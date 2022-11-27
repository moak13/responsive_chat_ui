import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../view_model/settings_viewmodel.dart';

class SettingsTabletView extends StatelessWidget {
  const SettingsTabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingsViewModel>.reactive(
      viewModelBuilder: () => SettingsViewModel(),
      builder: (
        BuildContext context,
        SettingsViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(),
          body: const Center(
            child: Text(
              'Settings Tablet View',
            ),
          ),
        );
      },
    );
  }
}
