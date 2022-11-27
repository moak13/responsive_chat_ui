import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../chat/screen_type/chat_screen_type.dart';
import '../../view_model/wrapper_viewmodel.dart';

class WrapperTabletView extends StatelessWidget {
  const WrapperTabletView({Key? key}) : super(key: key);

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
          appBar: AppBar(),
          drawer: Drawer(
            child: ListView(
              children: [
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                  onTap: model.moveToSettings,
                ),
              ],
            ),
          ),
          body: const ChatTabletView(),
        );
      },
    );
  }
}
