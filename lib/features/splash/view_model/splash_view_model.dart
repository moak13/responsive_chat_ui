import 'dart:async';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../core/core.dart';

class SplashViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void _moveToWrapper() {
    _navigationService.navigateToWrapperView();
  }

  void handleStartup() async {
    Duration duration = const Duration(seconds: 5);
    Timer(duration, _moveToWrapper);
  }
}
