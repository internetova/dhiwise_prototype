import 'package:flutter/material.dart';
import 'package:groceryprototype/presentation/splash_screen/splash_screen.dart';
import 'package:groceryprototype/presentation/login_with_email_id_screen/login_with_email_id_screen.dart';
import 'package:groceryprototype/presentation/explore_screen/explore_screen.dart';
import 'package:groceryprototype/presentation/fruits_screen/fruits_screen.dart';
import 'package:groceryprototype/presentation/details_screen/details_screen.dart';
import 'package:groceryprototype/presentation/my_subscription_screen/my_subscription_screen.dart';
import 'package:groceryprototype/presentation/my_cart_screen/my_cart_screen.dart';
import 'package:groceryprototype/presentation/user_screen/user_screen.dart';
import 'package:groceryprototype/presentation/my_addresses_screen/my_addresses_screen.dart';
import 'package:groceryprototype/presentation/my_wallet_screen/my_wallet_screen.dart';
import 'package:groceryprototype/presentation/my_orders_screen/my_orders_screen.dart';
import 'package:groceryprototype/presentation/faq_screen/faq_screen.dart';
import 'package:groceryprototype/presentation/contact_us_screen/contact_us_screen.dart';
import 'package:groceryprototype/presentation/about_us_screen/about_us_screen.dart';
import 'package:groceryprototype/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:groceryprototype/presentation/terms_of_services_screen/terms_of_services_screen.dart';
import 'package:groceryprototype/presentation/home_screen/home_screen.dart';
import 'package:groceryprototype/presentation/add_new_address_screen/add_new_address_screen.dart';
import 'package:groceryprototype/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginWithEmailIdScreen = '/login_with_email_id_screen';

  static const String exploreScreen = '/explore_screen';

  static const String fruitsScreen = '/fruits_screen';

  static const String detailsScreen = '/details_screen';

  static const String mySubscriptionScreen = '/my_subscription_screen';

  static const String myCartScreen = '/my_cart_screen';

  static const String userScreen = '/user_screen';

  static const String myAddressesScreen = '/my_addresses_screen';

  static const String myWalletScreen = '/my_wallet_screen';

  static const String myOrdersScreen = '/my_orders_screen';

  static const String faqScreen = '/faq_screen';

  static const String contactUsScreen = '/contact_us_screen';

  static const String aboutUsScreen = '/about_us_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String termsOfServicesScreen = '/terms_of_services_screen';

  static const String homeScreen = '/home_screen';

  static const String addNewAddressScreen = '/add_new_address_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    loginWithEmailIdScreen: (context) => LoginWithEmailIdScreen(),
    exploreScreen: (context) => ExploreScreen(),
    fruitsScreen: (context) => FruitsScreen(),
    detailsScreen: (context) => DetailsScreen(),
    mySubscriptionScreen: (context) => MySubscriptionScreen(),
    myCartScreen: (context) => MyCartScreen(),
    userScreen: (context) => UserScreen(),
    myAddressesScreen: (context) => MyAddressesScreen(),
    myWalletScreen: (context) => MyWalletScreen(),
    myOrdersScreen: (context) => MyOrdersScreen(),
    faqScreen: (context) => FaqScreen(),
    contactUsScreen: (context) => ContactUsScreen(),
    aboutUsScreen: (context) => AboutUsScreen(),
    privacyPolicyScreen: (context) => PrivacyPolicyScreen(),
    termsOfServicesScreen: (context) => TermsOfServicesScreen(),
    homeScreen: (context) => HomeScreen(),
    addNewAddressScreen: (context) => AddNewAddressScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
