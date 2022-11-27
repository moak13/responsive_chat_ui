import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../view_model/wrapper_viewmodel.dart';

class WrapperDesktopView extends StatelessWidget {
  const WrapperDesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WrapperViewModel>.reactive(
      viewModelBuilder: () => WrapperViewModel(),
      builder: (
        BuildContext context,
        WrapperViewModel model,
        Widget? child,
      ) {
        return const Scaffold(
          body: Center(
            child: Text(
              'Wrapper Desktop View',
            ),
          ),
        );
      },
    );
  }
}
