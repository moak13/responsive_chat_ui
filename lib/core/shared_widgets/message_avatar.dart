import 'package:flutter/material.dart';

import '../utils/utils.dart';

class MessageAvatar extends StatelessWidget {
  final String image;
  final String initials;
  const MessageAvatar({
    super.key,
    required this.image,
    required this.initials,
  });

  @override
  Widget build(BuildContext context) {
    SizeMg.init(context);
    if (StringUtil.isEmpty(image)) {
      return Container(
        height: SizeMg.height(44),
        width: SizeMg.width(44),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Palette.blue,
        ),
        child: Text(initials),
      );
    }
    return Container(
      height: SizeMg.height(44),
      width: SizeMg.width(44),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
    );
  }
}
