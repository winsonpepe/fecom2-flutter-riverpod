import 'package:flutter/material.dart';
import 'package:pepe_s_application5/presentation/splash_screen/splash_screen.dart';
import 'package:pepe_s_application5/presentation/login_screen/login_screen.dart';
import 'package:pepe_s_application5/presentation/register_screen/register_screen.dart';
import 'package:pepe_s_application5/presentation/main_landing_screen/main_landing_screen.dart';
import 'package:pepe_s_application5/presentation/product_discover_screen/product_discover_screen.dart';
import 'package:pepe_s_application5/presentation/product_search_screen/product_search_screen.dart';
import 'package:pepe_s_application5/presentation/cart_screen/cart_screen.dart';
import 'package:pepe_s_application5/presentation/profile_profile_info_tab_container_screen/profile_profile_info_tab_container_screen.dart';
import 'package:pepe_s_application5/presentation/product_page_screen/product_page_screen.dart';
import 'package:pepe_s_application5/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String mainLandingScreen = '/main_landing_screen';

  static const String productDiscoverScreen = '/product_discover_screen';

  static const String productSearchScreen = '/product_search_screen';

  static const String cartScreen = '/cart_screen';

  static const String profileProfileInfoPage = '/profile_profile_info_page';

  static const String profileProfileInfoTabContainerScreen =
      '/profile_profile_info_tab_container_screen';

  static const String profileMyOrdersPage = '/profile_my_orders_page';

  static const String profileSecurityPage = '/profile_security_page';

  static const String profileAddressDetailsPage =
      '/profile_address_details_page';

  static const String productPageScreen = '/product_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    loginScreen: (context) => LoginScreen(),
    registerScreen: (context) => RegisterScreen(),
    mainLandingScreen: (context) => MainLandingScreen(),
    productDiscoverScreen: (context) => ProductDiscoverScreen(),
    productSearchScreen: (context) => ProductSearchScreen(),
    cartScreen: (context) => CartScreen(),
    profileProfileInfoTabContainerScreen: (context) =>
        ProfileProfileInfoTabContainerScreen(),
    productPageScreen: (context) => ProductPageScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
