import 'package:flutter/material.dart';

import '../../../core/core.dart';

class MessageBubble extends StatelessWidget {
  final bool isMe;
  final String message;
  final double percentile;
  const MessageBubble({
    super.key,
    this.isMe = false,
    required this.message,
    required this.percentile,
  });

  @override
  Widget build(BuildContext context) {
    SizeMg.init(context);
    return Align(
      alignment: isMe ? Alignment.bottomRight : Alignment.bottomLeft,
      child: Container(
        width: SizeMg.screenWidth / percentile,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isMe
              ? Palette.meMessageBubbleColor
              : Palette.notMeMessageBubbleColor,
          borderRadius: BorderRadius.circular(SizeMg.radius(20)),
        ),
        child: Text(
          message,
          textAlign: isMe ? TextAlign.end : TextAlign.start,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: SizeMg.text(13),
            color: Palette.white,
          ),
        ),
      ),
    );
  }
}
