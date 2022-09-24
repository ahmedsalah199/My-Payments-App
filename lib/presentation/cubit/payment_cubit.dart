import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/data/models/auth_token_model.dart';
import 'package:payment/data/models/order_id_model.dart';
import 'package:payment/data/models/reference_code_model.dart';
import 'package:payment/data/repository/repository.dart';

import '../../core/utils/app_constants.dart';
import '../../data/models/mobile_wallet_model.dart';
import '../../data/models/payment_token_model.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  RepositoryPayment repositoryPayment;

  PaymentCubit({required this.repositoryPayment}) : super(PaymentInitial());

  static PaymentCubit getCubit(context) => BlocProvider.of(context);

  bool isLoading = true;

  changeLoadingWebView() {
    isLoading = false;
    emit(IsLoadingWebViewState());
  }

  int groupValue = 0;
  bool isClick = false;
  changeIsClick() {
    isClick = true;
    emit(IsClickState());
  }

  chooseYourPaymentMethod(value) {
    groupValue = value;
    emit(ChoosePaymentMethodState());
  }

  AuthTokenModel? authTokenModel;
  Future getAuthToken() async {
    try {
      var data = await repositoryPayment.getFirstToken(
          path: 'auth/tokens', body: {"api_key": AppConstants.apiKey});
      authTokenModel = data;
      AppConstants.authToken = data.token;
      if (kDebugMode) {
        print('authToken : ${AppConstants.authToken}');
      }
      emit(AuthTokenSuccessState());
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      emit(AuthTokenErrorState());
    }
  }

  OrderIdModel? orderIdModel;
  Future getOrderId(String price) async {
    try {
      var data = await repositoryPayment
          .getOrderRegistrationAPI(path: 'ecommerce/orders', body: {
        "auth_token": AppConstants.authToken,
        "delivery_needed": "false",
        "amount_cents": '${int.parse(price) * 100}',
        "items": [],
      });
      orderIdModel = data;
      AppConstants.orderId = data.id.toString();
      if (kDebugMode) {
        print('orderId :  ${AppConstants.orderId}');
      }
      emit(OrderIdSuccessState());
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      emit(OrderIdErrorState());
    }
  }

  PaymentTokenModel? paymentTokenCardModel;
  Future getPaymentTokenVisa(String price, String firstName, String lastName,
      String email, String phoneNumber) async {
    try {
      var data = await repositoryPayment
          .getPaymentKeyRequest(path: 'acceptance/payment_keys', body: {
        "auth_token": AppConstants.authToken,
        "amount_cents": '${int.parse(price) * 100}',
        "expiration": 3600,
        "currency": "EGP",
        "order_id	": AppConstants.orderId,
        "billing_data": {
          "first_name": firstName,
          "last_name": lastName,
          "email": email,
          "phone_number": phoneNumber,
          "apartment": "NA",
          "floor": "NA",
          "street": "NA",
          "building": "NA",
          "shipping_method": "NA",
          "postal_code": "NA",
          "city": "NA",
          "country": "NA",
          "state": "NA"
        },
        "integration_id": AppConstants.integrationsIdCard,
      });
      paymentTokenCardModel = data;
      AppConstants.paymentTokenCard = data.token.toString();
      if (kDebugMode) {
        print('paymentTokenCard :  ${AppConstants.paymentTokenCard}');
      }
      emit(PaymentTokenCardSuccessState());
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      emit(PaymentTokenCardErrorState());
    }
  }

  PaymentTokenModel? paymentTokenKioskModel;
  Future getPaymentTokenKiosk(String price, String firstName, String lastName,
      String email, String phoneNumber) async {
    try {
      var data = await repositoryPayment
          .getPaymentKeyRequest(path: 'acceptance/payment_keys', body: {
        "auth_token": AppConstants.authToken,
        "amount_cents": '${int.parse(price) * 100}',
        "expiration": 3600,
        "currency": "EGP",
        "order_id	": AppConstants.orderId,
        "billing_data": {
          "first_name": firstName,
          "last_name": lastName,
          "email": email,
          "phone_number": phoneNumber,
          "apartment": "NA",
          "floor": "NA",
          "street": "NA",
          "building": "NA",
          "shipping_method": "NA",
          "postal_code": "NA",
          "city": "NA",
          "country": "NA",
          "state": "NA"
        },
        "integration_id": AppConstants.integrationsIdKiosk,
      });
      paymentTokenKioskModel = data;
      AppConstants.paymentTokenKiosk = data.token.toString();
      if (kDebugMode) {
        print('paymentTokenKiosk :  ${AppConstants.paymentTokenKiosk}');
      }
      emit(PaymentTokenKioskSuccessState());
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      emit(PaymentTokenKioskErrorState());
    }
  }

  PaymentTokenModel? payTokenMobilWallet;
  Future getPaymentTokenMobileWallet(String price, String firstName,
      String lastName, String email, String phoneNumber) async {
    try {
      var data = await repositoryPayment
          .getPaymentKeyRequest(path: 'acceptance/payment_keys', body: {
        "auth_token": AppConstants.authToken,
        "amount_cents": '${int.parse(price) * 100}',
        "expiration": 3600,
        "currency": "EGP",
        "order_id	": AppConstants.orderId,
        "billing_data": {
          "first_name": firstName,
          "last_name": lastName,
          "email": email,
          "phone_number": phoneNumber,
          "apartment": "NA",
          "floor": "NA",
          "street": "NA",
          "building": "NA",
          "shipping_method": "NA",
          "postal_code": "NA",
          "city": "NA",
          "country": "NA",
          "state": "NA"
        },
        "integration_id": AppConstants.integrationsIdMobileWallet,
      });
      payTokenMobilWallet = data;
      AppConstants.paymentTokenMobileWallet = data.token.toString();
      if (kDebugMode) {
        print(
            'Payment Token Mobile Wallet :  ${AppConstants.paymentTokenMobileWallet}');
      }
      emit(PaymentTokenMobileWalletSuccessState());
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      emit(PaymentTokenMobileWalletErrorState());
    }
  }

  ReferenceCodeModel? referenceCodeModel;
  Future getRefCode() async {
    try {
      var data = await repositoryPayment
          .getReferenceCodeKiosk(path: 'acceptance/payments/pay', body: {
        "source": {"identifier": "AGGREGATOR", "subtype": "AGGREGATOR"},
        "payment_token": AppConstants.paymentTokenKiosk
      });
      referenceCodeModel = data;
      AppConstants.refCode = data.data.billReference.toString();
      if (kDebugMode) {
        print('referenceCode :  ${AppConstants.refCode}');
      }
      emit(ReferenceCodeSuccessState());
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      emit(ReferenceCodeErrorState());
    }
  }

  PayRequestMobilWallet? payRequestMobilWallet;
  Future getUrlMobilWallet(String phoneNumber) async {
    try {
      var data = await repositoryPayment
          .getPayRequestMobileWallet(path: 'acceptance/payments/pay', body: {
        "source": {"identifier": phoneNumber, "subtype": "WALLET"},
        "payment_token":
            AppConstants.paymentTokenMobileWallet // token obtained in step 3s
      });
      payRequestMobilWallet = data;
      AppConstants.urlMobileWallet = data.iframeRedirectionUrl.toString();
      if (kDebugMode) {
        print('Url Mobile Wallet :  ${AppConstants.urlMobileWallet}');
      }
      emit(GetUrlMobilWalletSuccessState());
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      emit(GetUrlMobilWalletErrorState());
    }
  }

  Future requestPaymentVisa(
      {required String price,
      required String firstName,
      required String lastName,
      required String email,
      required String phoneNumber}) async {
    await getAuthToken();
    await getOrderId(price);
    await getPaymentTokenVisa(price, firstName, lastName, email, phoneNumber);
  }

  Future requestKioskPayments(
      {required String price,
      required String firstName,
      required String lastName,
      required String email,
      required String phoneNumber}) async {
    await getAuthToken();
    await getOrderId(price);
    await getPaymentTokenKiosk(price, firstName, lastName, email, phoneNumber);
    await getRefCode();
  }

  Future requestMobilWallet(
      {required String price,
      required String firstName,
      required String lastName,
      required String email,
      required String phoneNumber}) async {
    await getAuthToken();
    await getOrderId(price);
    await getPaymentTokenMobileWallet(
        price, firstName, lastName, email, phoneNumber);
    await getUrlMobilWallet(phoneNumber);
  }
}
