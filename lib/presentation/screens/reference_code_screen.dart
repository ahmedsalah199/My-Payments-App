import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment/presentation/screens/payment_method_screen.dart';

import '../../core/utils/app_constants.dart';
import '../../core/utils/app_font.dart';
import '../../core/utils/app_strings.dart';
import '../../core/utils/app_value.dart';
import '../../core/utils/components.dart';

class ReferenceCodeScreen extends StatelessWidget {
  const ReferenceCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.referenceCode), actions: [
        IconButton(
          onPressed: () {
            navigatorAndFinish(
                context: context, screen: const PaymentMethodScreen());
          },
          icon: const Icon(Icons.exit_to_app_outlined, size: AppSize.s30),
        ),
      ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppStrings.payAtTheSupermarket,
                style: GoogleFonts.breeSerif(
                  fontWeight: FontWeight.w300,
                  fontSize: AppFontSize.s23,
                )),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                    horizontal: AppMargin.m20, vertical: AppMargin.m50),
                padding: const EdgeInsets.symmetric(vertical: AppMargin.m8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.grey.withOpacity(.1),
                ),
                child: Column(
                  children: [
                    Text('This Is ${AppStrings.referenceCode}',
                        style: GoogleFonts.breeSerif(
                          fontWeight: FontWeight.w300,
                          color: Colors.pink,
                          fontSize: AppFontSize.s25,
                        )),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: AppMargin.m8),
                      child: Divider(
                        height: AppSize.s12,
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),
                    Text(AppConstants.refCode.toString(),
                        style: GoogleFonts.staatliches(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 3,
                          fontSize: AppFontSize.s30,
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
