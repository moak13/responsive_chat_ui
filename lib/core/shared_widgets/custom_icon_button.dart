import 'package:flutter/material.dart';

import '../utils/utils.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final Color color;
  final VoidCallback onTap;
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    SizeMg.init(context);
    return Container(
      height: SizeMg.height(40),
      width: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: color,
        borderRadius: BorderRadius.circular(SizeMg.radius(10)),
      ),
      child: Material(
        color: Palette.transparent,
        borderRadius: BorderRadius.circular(SizeMg.radius(10)),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(SizeMg.radius(10)),
          child: SizedBox(
            height: SizeMg.height(40),
            width: 40,
            child: icon,
          ),
        ),
      ),
    );
  }
}
