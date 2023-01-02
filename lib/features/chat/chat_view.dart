import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'screen_type/chat_screen_type.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const ChatMobileView(),
      tablet: ChatTabletView(),
      desktop: ChatDesktopView(),
    );
  }
}
