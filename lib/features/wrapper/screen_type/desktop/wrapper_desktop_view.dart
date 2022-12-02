import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../view_model/wrapper_viewmodel.dart';
import '../../widget/get_index_view.dart';

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
        return Scaffold(
          body: Row(
            children: [
              NavigationRail(
                extended: true,
                selectedIndex: model.currentIndex,
                onDestinationSelected: model.setIndex,
                destinations: const [
                  NavigationRailDestination(
                    icon: Icon(Icons.chat),
                    label: Text('Chat'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.settings),
                    label: Text('Settings'),
                  ),
                ],
              ),
              Expanded(
                child: GetIndexView(
                  index: model.currentIndex,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
