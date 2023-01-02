import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../core/core.dart';

class ChatViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void actionMoveToMessages() {
    _navigationService.navigateToMessagesView();
  }
}
