import 'package:flutter/material.dart';

import '../utils/utils.dart';
import 'custom_avatar.dart';

class MessageTile extends StatelessWidget {
  final String image;
  final String initials;
  final String name;
  final String lastMessage;
  final String time;
  final VoidCallback onTap;
  final bool isSelected;
  const MessageTile({
    super.key,
    required this.image,
    required this.initials,
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    SizeMg.init(context);
    return Container(
      color: isSelected ? Palette.gray : Palette.transparent,
      child: ListTile(
        leading: CustomAvatar(
          image: image,
          initials: initials,
        ),
        title: Text(
          name,
          style: TextStyle(
            color: Palette.white,
            fontWeight: FontWeight.w400,
            fontSize: SizeMg.text(15),
          ),
        ),
        subtitle: Text(
          lastMessage,
          style: TextStyle(
            color: Palette.white,
            fontWeight: FontWeight.w300,
            fontSize: SizeMg.text(13),
          ),
        ),
        trailing: Text(
          time,
          style: TextStyle(
            color: Palette.white,
            fontWeight: FontWeight.w400,
            fontSize: SizeMg.text(15),
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
