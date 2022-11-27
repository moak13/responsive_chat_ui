import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../view_model/wrapper_viewmodel.dart';
import '../../widget/get_index_view.dart';

class WrapperMobileView extends StatelessWidget {
  const WrapperMobileView({Key? key}) : super(key: key);

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
          body: GetIndexView(
            index: model.currentIndex,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: model.currentIndex,
            onTap: model.setIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: '',
              ),
            ],
          ),
        );
      },
    );
  }
}
