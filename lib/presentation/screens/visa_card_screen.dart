import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/core/utils/app_constants.dart';
import 'package:payment/core/utils/app_strings.dart';
import 'package:payment/presentation/cubit/payment_cubit.dart';
import 'package:payment/presentation/screens/payment_method_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../core/utils/app_value.dart';
import '../../core/utils/components.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.checkout), actions: [
        IconButton(
          onPressed: () {
            navigatorAndFinish(
                context: context, screen: const PaymentMethodScreen());
          },
          icon: const Icon(
            Icons.exit_to_app_outlined,
            size: AppSize.s30,
          ),
        ),
      ]),
      body: BlocBuilder<PaymentCubit, PaymentState>(
        builder: (context, state) {
          var cubit = PaymentCubit.getCubit(context);
          return Stack(
            children: [
              WebView(
                initialUrl: cubit.groupValue == 1
                    ? '${AppConstants.iframesCard}${AppConstants.paymentTokenCard}'
                    : AppConstants.urlMobileWallet,
                javascriptMode: JavascriptMode.unrestricted,
                onPageFinished: (finish) {
                  cubit.changeLoadingWebView();
                },
              ),
              cubit.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Container(),
            ],
          );
        },
      ),
    );
  }
}
