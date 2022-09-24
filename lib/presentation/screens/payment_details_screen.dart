import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/core/utils/app_strings.dart';
import 'package:payment/core/utils/components.dart';
import 'package:payment/presentation/cubit/payment_cubit.dart';
import 'package:payment/presentation/screens/payment_method_screen.dart';
import 'package:payment/presentation/screens/reference_code_screen.dart';
import 'package:payment/presentation/screens/visa_card_screen.dart';

import '../../core/utils/app_value.dart';

class PaymentDetailsScreen extends StatelessWidget {
  PaymentDetailsScreen({Key? key}) : super(key: key);
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var cubit = PaymentCubit.getCubit(context);
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentTokenCardSuccessState ||
            state is GetUrlMobilWalletSuccessState) {
          navigatorAndFinish(context: context, screen: const CheckOutScreen());
          cubit.isClick = false;
        } else if (state is ReferenceCodeSuccessState) {
          navigatorAndFinish(
              context: context, screen: const ReferenceCodeScreen());
          cubit.isClick = false;
        }
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: const Text(AppStrings.paymentDetails),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.grey),
              onPressed: () => navigatorAndFinish(
                  context: context, screen: const PaymentMethodScreen()),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p30, vertical: AppPadding.p40),
              child: Form(
                  key: keyForm,
                  child: Column(
                    children: [
                      defaultTextFormField(
                        label: AppStrings.firstName,
                        controller: firstNameController,
                        prefixIcon: Icons.person,
                        keyboardType: TextInputType.text,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return AppStrings.enterYourFirstName;
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: AppSize.s20,
                      ),
                      defaultTextFormField(
                        label: AppStrings.lastName,
                        controller: lastNameController,
                        prefixIcon: Icons.person_rounded,
                        keyboardType: TextInputType.text,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return AppStrings.enterYourLastName;
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: AppSize.s20,
                      ),
                      defaultTextFormField(
                        label: AppStrings.emailAddress,
                        controller: emailController,
                        prefixIcon: Icons.email_rounded,
                        keyboardType: TextInputType.emailAddress,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return AppStrings.enterYourEmailAddress;
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: AppSize.s20,
                      ),
                      defaultTextFormField(
                        label: AppStrings.phoneNumber,
                        controller: phoneController,
                        prefixIcon: Icons.phone_rounded,
                        keyboardType: TextInputType.phone,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return AppStrings.enterYourPhoneNumber;
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: AppSize.s20,
                      ),
                      defaultTextFormField(
                        label: AppStrings.price,
                        controller: priceController,
                        prefixIcon: Icons.monetization_on_rounded,
                        keyboardType: TextInputType.number,
                        inputAction: TextInputAction.done,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return AppStrings.enterThePaymentAmount;
                          }
                          return null;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p25,
                            vertical: AppPadding.p50),
                        child: cubit.isClick == false
                            ? defaultButton(
                                text: AppStrings.goToPay,
                                function: () async {
                                  if (keyForm.currentState!.validate()) {
                                    cubit.changeIsClick();
                                    if (cubit.groupValue == 1) {
                                      cubit.requestPaymentVisa(
                                        price: priceController.text,
                                        firstName: firstNameController.text,
                                        lastName: lastNameController.text,
                                        email: emailController.text,
                                        phoneNumber: phoneController.text,
                                      );
                                    } else if (cubit.groupValue == 2) {
                                      cubit.requestKioskPayments(
                                        price: priceController.text,
                                        firstName: firstNameController.text,
                                        lastName: lastNameController.text,
                                        email: emailController.text,
                                        phoneNumber: phoneController.text,
                                      );
                                    } else if (cubit.groupValue == 3) {
                                      cubit.requestMobilWallet(
                                        price: priceController.text,
                                        firstName: firstNameController.text,
                                        lastName: lastNameController.text,
                                        email: emailController.text,
                                        phoneNumber: phoneController.text,
                                      );
                                    }
                                  }
                                },
                                radius: AppSize.s10)
                            : const CircularProgressIndicator(),
                      )
                    ],
                  )),
            ),
          ),
        );
      },
    );
  }
}
