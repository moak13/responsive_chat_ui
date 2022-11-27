import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../features/settings/settings_view.dart';
import '../../features/splash/splash_view.dart';

@StackedApp(
  routes: [
    AdaptiveRoute(page: SplashView, initial: true),
    AdaptiveRoute(page: SettingsView)
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class AppSetup {}
