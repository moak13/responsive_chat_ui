import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'screen_type/chat_screen_type.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const ChatMobileView(),
      tablet: (context) => ChatTabletView(),
      desktop: (context) => ChatDesktopView(),
    );
  }
}
