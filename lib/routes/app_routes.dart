import 'package:flutter/material.dart';
import '../presentation/android_small_one_screen/android_small_one_screen.dart';
import '../presentation/android_small_two_screen/android_small_two_screen.dart';
import '../presentation/android_small_three_screen/android_small_three_screen.dart';
import '../presentation/food_clasification_screen/food_clasification_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/android_small_four_screen/android_small_four_screen.dart';
import '../presentation/android_small_five_screen/android_small_five_screen.dart';
import '../presentation/android_small_six_screen/android_small_six_screen.dart';
import '../presentation/android_small_seven_tab_container_screen/android_small_seven_tab_container_screen.dart';

class AppRoutes {
  static const String androidSmallOneScreen = '/android_small_one_screen';

  static const String androidSmallTwoScreen = '/android_small_two_screen';

  static const String androidSmallThreeScreen = '/android_small_three_screen';

  static const String foodClasificationScreen = '/food_clasification_screen';

  static const String androidSmallFourScreen = '/android_small_four_screen';

  static const String androidSmallFiveScreen = '/android_small_five_screen';

  static const String androidSmallSixScreen = '/android_small_six_screen';

  static const String androidSmallSevenPage = '/android_small_seven_page';

  static const String appNavigationScreen = '/app_navigation_screen';


  static const String androidSmallSevenTabContainerScreen = '/android_small_seven_tab_container_screen';


  static Map<String, WidgetBuilder> routes = {
    androidSmallOneScreen: (context) => AndroidSmallOneScreen(),
    androidSmallTwoScreen: (context) => AndroidSmallTwoScreen(),
    androidSmallThreeScreen: (context) => AndroidSmallThreeScreen(),
    foodClasificationScreen: (context) => FoodClasificationScreen(),
    androidSmallFourScreen: (context) => AndroidSmallFourScreen(),
    androidSmallFiveScreen: (context) => AndroidSmallFiveScreen(),
    androidSmallSixScreen: (context) => AndroidSmallSixScreen(),
    androidSmallSevenTabContainerScreen: (context) => AndroidSmallSevenTabContainerScreen(),

    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
