import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment/core/utils/app_assets.dart';
import 'package:payment/presentation/cubit/payment_cubit.dart';

import '../../core/utils/app_font.dart';
import '../../core/utils/app_strings.dart';
import '../../core/utils/app_value.dart';

class BuildRadioPaymentMethod extends StatelessWidget {
  final PaymentCubit cubit;
  const BuildRadioPaymentMethod({Key? key, required this.cubit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
            horizontal: AppMargin.m20, vertical: AppMargin.m20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.grey.withOpacity(.1),
        ),
        child: Column(
          children: [
            buildRadioButton(
                cubit, AppImages.visaImage, 1, AppStrings.creditCard),
            const Divider(
              height: AppSize.s12,
              color: Colors.black,
              thickness: 1,
            ),
            buildRadioButton(
                cubit, AppImages.kioskImage, 2, AppStrings.referenceCode),
            const Divider(
              height: AppSize.s12,
              color: Colors.black,
              thickness: 1,
            ),
            buildRadioButton(
                cubit, AppImages.mobileWalletImage, 3, AppStrings.mobileWallet),
          ],
        ));
  }

  Widget buildRadioButton(
      PaymentCubit cubit, String image, int val, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p6,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: RadioListTile(
              value: val,
              groupValue: cubit.groupValue,
              title: Text(title,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    fontSize: AppFontSize.s20,
                    fontStyle: FontStyle.italic,
                  )),
              contentPadding: EdgeInsets.zero,
              onChanged: (value) {
                cubit.chooseYourPaymentMethod(value);
              },
            ),
          ),
          Image.asset(
            image,
            height: AppSize.s120,
            width: AppSize.s110,
          ),
        ],
      ),
    );
  }
}
