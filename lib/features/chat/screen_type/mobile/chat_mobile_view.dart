import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../core/core.dart';
import '../../view_model/chat_viewmodel.dart';

class ChatMobileView extends StatelessWidget {
  const ChatMobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeMg.init(context);
    return ViewModelBuilder<ChatViewModel>.reactive(
      viewModelBuilder: () => ChatViewModel(),
      builder: (
        BuildContext context,
        ChatViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          backgroundColor: Palette.scaffoldColor,
          body: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: SizeMg.height(50),
                  left: SizeMg.width(20),
                  right: SizeMg.width(20),
                ),
                child: Row(
                  children: [
                    const Expanded(
                      flex: 3,
                      child: CustomTextField(
                        hintText: 'search...',
                      ),
                    ),
                    SizedBox(
                      width: SizeMg.width(5),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomIconButton(
                            icon: const Icon(
                              Icons.search,
                              color: Palette.white,
                            ),
                            color: Palette.gray,
                            onTap: () {},
                          ),
                          CustomIconButton(
                            icon: const Icon(
                              Icons.add,
                              color: Palette.white,
                            ),
                            color: Palette.blue,
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeMg.height(200),
                child: ListView.separated(
                  padding: EdgeInsets.only(
                    top: SizeMg.height(12),
                    left: SizeMg.width(25),
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const StoryBubble();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: SizeMg.width(15),
                    );
                  },
                  itemCount: 7,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.only(
                  top: SizeMg.height(28),
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return MessageTile(
                    image: '',
                    initials: 'MK',
                    name: 'Michael Kalango',
                    lastMessage: 'Let\'s keep cooking',
                    time: 'Tue',
                    onTap: () {},
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
