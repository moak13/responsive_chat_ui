import 'package:flutter/material.dart';

import '../utils/utils.dart';

class StoryBubble extends StatelessWidget {
  const StoryBubble({super.key});

  @override
  Widget build(BuildContext context) {
    SizeMg.init(context);
    return Container(
      height: SizeMg.height(140),
      width: SizeMg.width(95),
      decoration: BoxDecoration(
        color: Palette.yellow,
        borderRadius: BorderRadius.circular(SizeMg.radius(30)),
      ),
    );
  }
}
