import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment/core/utils/app_font.dart';
import 'package:payment/core/utils/app_strings.dart';
import 'package:payment/presentation/screens/payment_details_screen.dart';
import 'package:payment/presentation/widgets/radio_payment_method.dart';

import '../../core/utils/app_assets.dart';
import '../../core/utils/app_value.dart';
import '../../core/utils/components.dart';
import '../cubit/payment_cubit.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentCubit, PaymentState>(
      builder: (context, state) {
        var cubit = PaymentCubit.getCubit(context);
        return Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: const Text(
              AppStrings.paymentMethod,
            ),
          ),
          body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: AppSize.s30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p20, vertical: AppPadding.p20),
                child: Text(AppStrings.chooseAPaymentMethod,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w700,
                      fontSize: AppFontSize.s25,
                      fontStyle: FontStyle.italic,
                    )),
              ),
              BuildRadioPaymentMethod(cubit: cubit),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p50, vertical: AppPadding.p30),
                child: defaultButton(
                    text: AppStrings.confirmAndContinue,
                    function: () {
                      if (cubit.groupValue == 1 ||
                          cubit.groupValue == 2 ||
                          cubit.groupValue == 3) {
                        navigatorAndFinish(
                            context: context, screen: PaymentDetailsScreen());
                      } else {
                        buildSnackBar(context);
                      }
                    },
                    radius: AppSize.s10),
              ),
            ]),
          ),
        );
      },
    );
  }

  Container buildRadioPaymentMethod(PaymentCubit cubit) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
            horizontal: AppMargin.m20, vertical: AppMargin.m30),
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
