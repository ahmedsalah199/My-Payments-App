import 'package:flutter/material.dart';
import 'package:payment/core/utils/app_strings.dart';
import 'package:payment/presentation/screens/payment_details_screen.dart';
import 'package:payment/presentation/screens/payment_method_screen.dart';
import 'package:payment/presentation/screens/reference_code_screen.dart';
import 'package:payment/presentation/screens/visa_card_screen.dart';

class Routes {
  static const String homeRoute = '/';
  static const String paymentDetailsRoute = '/Payment Details Route';
  static const String refCodeRoute = '/Ref Code Route';
  static const String visaCardRoute = '/Visa Card Route';
  static const String noScreenFound = '/No Screen Found';
}

class AppRoutes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const PaymentMethodScreen());
      case Routes.paymentDetailsRoute:
        return MaterialPageRoute(builder: (_) => PaymentDetailsScreen());
      case Routes.refCodeRoute:
        return MaterialPageRoute(builder: (_) => const ReferenceCodeScreen());
      case Routes.visaCardRoute:
        return MaterialPageRoute(builder: (_) => const CheckOutScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noScreenFound),
              ),
              body: const Center(child: Text(AppStrings.noScreenFound)),
            ));
  }
}
