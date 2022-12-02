import 'package:flutter/material.dart';

import '../utils/utils.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String hintText;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    SizeMg.init(context);
    return TextField(
      controller: controller,
      focusNode: focusNode,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
          left: SizeMg.width(15),
        ),
        filled: true,
        fillColor: Palette.black.withOpacity(0.22),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: SizeMg.text(14),
          fontWeight: FontWeight.w400,
          color: Palette.white.withOpacity(0.66),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(SizeMg.radius(10)),
        ),
      ),
    );
  }
}
