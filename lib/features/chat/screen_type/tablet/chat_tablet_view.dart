import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../view_model/chat_viewmodel.dart';

class ChatTabletView extends StatelessWidget {
  const ChatTabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ChatViewModel>.reactive(
      viewModelBuilder: () => ChatViewModel(),
      builder: (
        BuildContext context,
        ChatViewModel model,
        Widget? child,
      ) {
        return const Scaffold(
          body: Center(
            child: Text(
              'Chat Tablet View',
            ),
          ),
        );
      },
    );
  }
}
