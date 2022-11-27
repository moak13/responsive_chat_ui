import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../view_model/splash_view_model.dart';

class SplashTabletView extends StatelessWidget {
  const SplashTabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      viewModelBuilder: () => SplashViewModel(),
      builder: (
        BuildContext context,
        SplashViewModel model,
        Widget? child,
      ) {
        return const Scaffold(
          body: Center(
            child: Text(
              'Splash Tablet View',
            ),
          ),
        );
      },
    );
  }
}
