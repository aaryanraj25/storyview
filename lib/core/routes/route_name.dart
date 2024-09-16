import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:storyview/core/routes/routes.dart';
import 'package:storyview/features/home/presentation/screen/home_screen.dart';
import 'package:storyview/features/splash/screen/splash_screen.dart';

class AppRoutes {
  static const Transition transition = Transition.native;

  static appRoutes() => [
        // splash Screen
        GetPage(
          name: RouteName.splash,
          page: () => const SplashScreen(),
        ),

        GetPage(
          name: RouteName.home,
          page: () => HomeScreen(),
        ),

  ];
}