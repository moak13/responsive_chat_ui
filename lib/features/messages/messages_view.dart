import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'screen_type/messages_screen_type.dart';

class MessagesView extends StatelessWidget {
  const MessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const MessagesMobileView(),
      tablet: (context) => const MessagesTabletView(),
      desktop: (context) => const MessagesDesktopView(),
    );
  }
}
