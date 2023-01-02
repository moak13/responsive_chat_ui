import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'screen_type/messages_screen_type.dart';

class MessagesView extends StatelessWidget {
  const MessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const MessagesMobileView(),
      tablet: const MessagesTabletView(),
      desktop: const MessagesDesktopView(),
    );
  }
}
