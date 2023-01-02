import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../core/core.dart';
import '../../view_model/messages_viewmodel.dart';
import '../../widgets/message_bubble.dart';

class MessagesMobileView extends StatelessWidget {
  const MessagesMobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeMg.init(context);
    return ViewModelBuilder<MessagesViewModel>.reactive(
      viewModelBuilder: () => MessagesViewModel(),
      builder: (
        BuildContext context,
        MessagesViewModel model,
        Widget? child,
      ) {
        return GestureDetector(
          onTap: () => ContextUtil.hideKeyboard(context),
          child: Scaffold(
            backgroundColor: Palette.scaffoldColor,
            appBar: AppBar(
              backgroundColor: Palette.transparent,
              elevation: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CustomAvatar(
                    image: '',
                    initials: 'MK',
                  ),
                  SizedBox(
                    width: SizeMg.width(5),
                  ),
                  Text(
                    'Michael Kalango',
                    style: TextStyle(
                      color: Palette.white,
                      fontWeight: FontWeight.w400,
                      fontSize: SizeMg.text(15),
                    ),
                  ),
                ],
              ),
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView(
                    reverse: true,
                    padding: EdgeInsets.only(
                      bottom: SizeMg.height(10),
                      left: SizeMg.width(10),
                      right: SizeMg.width(10),
                    ),
                    children: [
                      const MessageBubble(
                        message: 'Hahaa.. I get you.',
                        percentile: 2,
                      ),
                      SizedBox(
                        height: SizeMg.height(15),
                      ),
                      const MessageBubble(
                        message:
                            'I have been better. Just the New Year vibes hasn\'t sunk in yet you know.',
                        isMe: true,
                        percentile: 2,
                      ),
                      SizedBox(
                        height: SizeMg.height(15),
                      ),
                      const MessageBubble(
                        message: 'I am fine and you?',
                        percentile: 2,
                      ),
                      SizedBox(
                        height: SizeMg.height(15),
                      ),
                      const MessageBubble(
                        message: 'Hi, How are you?',
                        isMe: true,
                        percentile: 2,
                      ),
                      SizedBox(
                        height: SizeMg.height(15),
                      ),
                      const MessageBubble(
                        message: 'Hello',
                        percentile: 2,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeMg.height(5),
                    left: SizeMg.width(10),
                    right: SizeMg.width(10),
                    bottom: SizeMg.height(20),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: CustomTextField(
                          hintText: 'write',
                        ),
                      ),
                      SizedBox(
                        width: SizeMg.width(5),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomIconButton(
                              icon: const Icon(
                                Icons.chat_bubble_rounded,
                                color: Palette.grayTunedLight,
                              ),
                              color: Palette.grayTunedDeep,
                              onTap: () {},
                            ),
                            CustomIconButton(
                              icon: const Icon(
                                Icons.camera_alt,
                                color: Palette.white,
                              ),
                              color: Palette.green,
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
