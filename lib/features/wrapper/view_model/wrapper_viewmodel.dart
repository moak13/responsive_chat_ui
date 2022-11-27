import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../core/core.dart';

class WrapperViewModel extends IndexTrackingViewModel {
  final _navigationService = locator<NavigationService>();

  void pop() {
    _navigationService.back();
  }

  void moveToSettings() {
    pop();
    _navigationService.navigateToSettingsView();
  }
}
