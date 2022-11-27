import 'package:flutter/material.dart';

import '../../chat/chat_view.dart';
import '../../settings/settings_view.dart';

class GetIndexView extends StatelessWidget {
  final int? index;
  const GetIndexView({super.key, this.index});

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0:
        return const ChatView();
      case 1:
        return const SettingsView();
      default:
        return const ChatView();
    }
  }
}
