part of 'payment_cubit.dart';

@immutable
abstract class PaymentState {}

class PaymentInitial extends PaymentState {}

class ChoosePaymentMethodState extends PaymentState {}

class AuthTokenSuccessState extends PaymentState {}

class AuthTokenErrorState extends PaymentState {}

class OrderIdSuccessState extends PaymentState {}

class OrderIdErrorState extends PaymentState {}

class PaymentTokenCardSuccessState extends PaymentState {}

class PaymentTokenCardErrorState extends PaymentState {}

class PaymentTokenMobileWalletSuccessState extends PaymentState {}

class PaymentTokenMobileWalletErrorState extends PaymentState {}

class GetUrlMobilWalletSuccessState extends PaymentState {}

class GetUrlMobilWalletErrorState extends PaymentState {}

class PaymentTokenKioskSuccessState extends PaymentState {}

class PaymentTokenKioskErrorState extends PaymentState {}

class ReferenceCodeSuccessState extends PaymentState {}

class ReferenceCodeErrorState extends PaymentState {}

class IsClickState extends PaymentState {}

class IsLoadingWebViewState extends PaymentState {}
