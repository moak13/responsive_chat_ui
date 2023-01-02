import 'package:dual_screen/dual_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_chat_ui/features/messages/screen_type/messages_screen_type.dart';
import 'package:stacked/stacked.dart';

import '../../../../core/core.dart';
import '../../view_model/chat_viewmodel.dart';

// ignore: must_be_immutable
class ChatTabletView extends StatelessWidget {
  ChatTabletView({Key? key}) : super(key: key);

  int? selectedIndex = -1;

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
          body: TwoPane(
            paneProportion: 0.3,
            startPane: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeMg.height(50),
                    left: SizeMg.width(15),
                    right: SizeMg.width(10),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 2,
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
                      top: SizeMg.height(38),
                      left: SizeMg.width(15),
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
                    top: SizeMg.height(20),
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
                      isSelected: selectedIndex == index,
                      onTap: () {
                        selectedIndex = index;
                        model.notifyListeners();
                      },
                    );
                  },
                ),
              ],
            ),
            endPane: Builder(
              builder: (context) {
                if (selectedIndex == -1) {
                  return Center(
                    child: Text(
                      'No Message(s) selected',
                      style: TextStyle(
                        color: Palette.white,
                        fontSize: SizeMg.text(20),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  );
                }

                return const MessagesTabletView();
              },
            ),
          ),
        );
      },
    );
  }
}
